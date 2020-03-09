﻿using RestWithASPNETUdemy.Model.Base;
using System.Collections.Generic;

namespace RestWithASPNETUdemy.Repository.Generic
{
    public  interface IRepository<T> where T :BaseEntity
    {
        T Create(T item);
        T FindById(long id);
        List<T> FindAll();
        T Update(T item);
        void Delete(long id);

        bool Exist(long? id);

        List<T> FindWithPageSearch(string query);

        int GetCount(string query);
    }
}