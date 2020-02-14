using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using RestWithASPNETUdemy.Model;
using RestWithASPNETUdemy.Model.Context;
using RestWithASPNETUdemy.Repository;

namespace RestWithASPNETUdemy.Repository.Implementations
{
    public class UserRepositoryImpl : IUserRepository
    {
        private MySQLContext _context;

        public UserRepositoryImpl(MySQLContext context) {
            _context= context;
        }

        public User  FindByLogin(string login)
        {
            return _context.Users.SingleOrDefault(u => u.Login.Equals(login));
        }


    }
}
