using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Principal;
using Microsoft.IdentityModel.Tokens;
using RestWithASPNETUdemy.Data.Converters;
using RestWithASPNETUdemy.Data.VO;
using RestWithASPNETUdemy.Model;
using RestWithASPNETUdemy.Repository;
using RestWithASPNETUdemy.Security.Configuration;

namespace RestWithASPNETUdemy.Business.Implementations
{
    public class LoginBusinessImpl: ILoginBusiness
    {
        private IUserRepository _repository;
        private SigningConfigurations _singningConfigurations;
        private TokenConfiguration _tokenConfiguration;

        public LoginBusinessImpl(IUserRepository repository, SigningConfigurations singningConfigurations, TokenConfiguration tokenConfiguration)
        {
            _repository = repository;
            _singningConfigurations = singningConfigurations;
            _tokenConfiguration = tokenConfiguration;
        }

        public object FindByLogin(UserVO user)
        {
            bool credentialIsValid = false;
            if (user != null && !string.IsNullOrWhiteSpace(user.Login))
            {
                var baseUser = _repository.FindByLogin(user.Login);
                credentialIsValid = (baseUser!=null && baseUser.Login == user.Login && baseUser.AcessKey == user.AccessKey);

            }

            if (credentialIsValid)
            {
                ClaimsIdentity identity = new ClaimsIdentity(
                    new GenericIdentity(user.Login, "Login"),
                      new[] {
                          new Claim (JwtRegisteredClaimNames.Jti,Guid.NewGuid ().ToString ("N")),
                          new Claim (JwtRegisteredClaimNames.UniqueName ,user.Login )
                      }  
                    );

                DateTime createDate = DateTime.Now;
                DateTime experationDate = (createDate + TimeSpan.FromSeconds(_tokenConfiguration.Seconds));

                var handler =new  JwtSecurityTokenHandler();
                string token = CreateToken(identity, createDate, experationDate, handler);

                return SucessObject(createDate,experationDate,token);
            }
            else {
                return ExceptionObject();
            }
        }

        private string CreateToken(ClaimsIdentity identity, DateTime createDate, DateTime experationDate, JwtSecurityTokenHandler handler)
        {
            var securityToken = handler.CreateToken(new SecurityTokenDescriptor {
                Issuer =_tokenConfiguration.Issuer ,
                Audience =_tokenConfiguration.Audience,
                SigningCredentials =_singningConfigurations.SigningCredentials,
                Subject =identity ,
                NotBefore =createDate ,
                Expires=experationDate 
            });

            var token = handler.WriteToken(securityToken);

            return token;
        }

        private object ExceptionObject()
        {
            return new
            {
                autenticated = false,
                message = "Failed to Autheticate"
            };
        }

        private object SucessObject(DateTime createDate,DateTime experationDate,string token)
        {
            return new
            {
                autenticated = true,
                created = createDate.ToString("yyyy-MM-dd HH:mm:ss"),
                expiration = experationDate.ToString("yyyy-MM-dd HH:mm:ss"),
                acessToken = token,
                message = "OK"
            };
        }
    }
}

