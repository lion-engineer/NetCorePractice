using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Web.Common;
using Web.Common.Table;

namespace Web.Repository
{
    public interface IUserRepository
    {
        IQueryable<User> GetUsers();
    }

    public class UserRepository : BaseRepository<User>, IUserRepository
    {
        private readonly WebContext _db;
        public UserRepository(WebContext db)
            :base(db)
        {
            _db = db;
        }

        public IQueryable<User> GetUsers()
        {
            return _db.User;
        }
    }
}
