﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using RestWithASPNETUdemy.Data.Converters;
using RestWithASPNETUdemy.Data.VO;
using RestWithASPNETUdemy.Model;
using RestWithASPNETUdemy.Model.Context;
using RestWithASPNETUdemy.Repository;
using RestWithASPNETUdemy.Repository.Generic;
using Tapioca.HATEOAS.Utils;

namespace RestWithASPNETUdemy.Business.Implementations
{
    public class PersonBusinessImpl : IPersonBusiness
    {
        private IPersonRepository  _repository;
        private readonly  PersonConverter _converter;

        public PersonBusinessImpl(IPersonRepository repository) {
            _repository = repository;
            _converter = new PersonConverter();
        }

        public PersonVO Create(PersonVO person)
        {
            var personEntity = _converter.Parse(person);
            personEntity = _repository.Create(personEntity);
            return _converter.Parse(personEntity);
        }

        public void Delete(long id)
        {
            _repository.Delete(id);
        }

        public List<PersonVO> FindAll()
        {
               return _converter.ParseList(_repository.FindAll());
          
        }

        public List<PersonVO> FindByName(string firstName, string lastName)
        {
            return _converter.ParseList(_repository.FindByName(firstName, lastName));

        }

        public PersonVO FindById(long id)
        {
            return _converter.Parse(_repository.FindById(id));
        }

        public PagedSearchDTO<PersonVO> FindWithPageSearch(string name,string sortDirection ,int pageSize,int page) {

            page = page > 0 ? page - 1 : 0;
            string query = @"Select * from persons p where 1=1 ";
            if (!string.IsNullOrEmpty(name)) query = query + $"and p.firstname like '%{name}%'"; 
              query=query + $" order by p.firstname {sortDirection} limit {pageSize} offset {page} ";

            string countQuery = @"Select count(*) from persons p where 1=1 ";
            if (!string.IsNullOrEmpty(name)) countQuery = countQuery + $"and p.firstname like '%{name}%'";

            var persons=_converter.ParseList(_repository.FindWithPageSearch(query));
            int totalResults= _repository.GetCount (countQuery);

            return new PagedSearchDTO<PersonVO>
            {
                CurrentPage = page+1,
                List =persons,
                PageSize =pageSize ,
                SortDirections = sortDirection,
                TotalResults= totalResults
            };
        }

        public PersonVO Update(PersonVO person)
        {
            var personEntity = _converter.Parse(person);
            personEntity = _repository.Update(personEntity);
            return _converter.Parse(personEntity);
        }
    }
}
