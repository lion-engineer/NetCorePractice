using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Web.Common;

namespace Web.Repository
{
    public interface IRepository<TEnity> 
    {
        IQueryable<TEnity> GetAll();
    }
    public class BaseRepository<TEntity> : IRepository<TEntity>
        where TEntity:class
    {
        private readonly WebContext _db;
        protected DbSet<TEntity> Set;
        public BaseRepository()
        {

        }

        public BaseRepository(WebContext db)
        {
            _db = db;
        }

        public IQueryable<TEntity> GetAll() 
        {
            return _db.Set<TEntity>();
        }
    }
}
