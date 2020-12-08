using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Web.Common;
using Web.Common.Table;

namespace Web.Repository
{
    public interface IStudentRepository
    {
        IQueryable<Student> GetStudents();
    }

    public class StudentRepository : BaseRepository<Student>, IStudentRepository
    {
        private readonly WebContext _db;
        public StudentRepository(WebContext db)
            :base(db)
        {
            _db = db;
        }

        public IQueryable<Student> GetStudents()
        {
            return _db.Student.Include(c => c.User).Include(d => d.Department);
        }
    }
}
