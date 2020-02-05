using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RestWithASPNETUdemy.Model;
using RestWithASPNETUdemy.Repository.Generic;

namespace RestWithASPNETUdemy.Business.Implementations
{
    public class BookBusinessImpl: BookBusiness
    {
        private IRepository<Book> _repository;

        public BookBusinessImpl(IRepository<Book> repository)
        {
            _repository = repository;
        }

    
        public Book Create(Book book)
        {
            return _repository.Create(book);
        }

        public void Delete(long id)
        {
            _repository.Delete(id);
        }

         public Book Update(Book book)
        {
            return _repository.Update(book);
        }

        List<Book> BookBusiness.FindAll()
        {
            return _repository.FindAll();
        }

        Book BookBusiness.FindById(long id)
        {
            return _repository.FindById(id);
        }
    }
}

