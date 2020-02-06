using System.Collections.Generic;
using System.Linq;
using RestWithASPNETUdemy.Data.Converter;
using RestWithASPNETUdemy.Data.VO;
using RestWithASPNETUdemy.Model;



namespace RestWithASPNETUdemy.Data.Converters
{
    public class PersonConverter : IParser<PersonVO, Person>, IParser<Person, PersonVO>
    {
        public Person Parse(PersonVO origin)
        {
            if (origin == null) return null;
            return new Person {
                Id = origin.Id,
                FirstName = origin.FirstName,
                LastName = origin.LastName,
                Adress =origin.Adress,
                Gender =origin.Gender 
            };
        }

        public PersonVO Parse(Person origin)
        {
            if (origin == null) return null;
            return new PersonVO
            {
                Id = origin.Id,
                FirstName = origin.FirstName,
                LastName = origin.LastName,
                Adress = origin.Adress,
                Gender = origin.Gender
            };
        }

        public List<Person> ParseList(List<PersonVO> originList)
        {
            if (originList == null) return null;
            return originList.Select(item => Parse(item)).ToList();
        }

        public List<PersonVO> ParseList(List<Person> originList)
        {
            if (originList == null) return null;
            return originList.Select(item => Parse(item)).ToList();
        }
    }
}
