using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Web.Common;
using Web.Common.Table;

namespace Web.Repository
{
    public interface ITeacherRepository
    {
        IQueryable<Teacher> GetTeachers();
    }

    public class TeacherRepository : BaseRepository<Teacher>, ITeacherRepository
    {
        private readonly WebContext _db;
        public TeacherRepository(WebContext db)
            : base(db)
        {
            _db = db;
        }

        public IQueryable<Teacher> GetTeachers()
        {
            return _db.Teacher.Include(c => c.User).Include(d => d.Department);
        }
    }
}
