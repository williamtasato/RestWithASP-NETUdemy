using RestWithASPNETUdemy.Data.VO;
using RestWithASPNETUdemy.Model;
using System.Collections.Generic;

namespace RestWithASPNETUdemy.Business
{
    public interface  BookBusiness
    {
        BookVO Create(BookVO bookVO);
        BookVO FindById(long id);
        List<BookVO> FindAll();
        BookVO Update(BookVO bookVO);
        void Delete(long id);
    }
}
