using Common.ViewModel;
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
        IQueryable<StudertDetailViewModel> GetStudentDetails();
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

        public IQueryable<StudertDetailViewModel> GetStudentDetails() 
        {
            var q = from sd in _db.StudentDetail.Include(c => c.CourceDetails).Include(s => s.Student)
                    join su in _db.User on sd.Student.UserId equals su.UserId
                    join c in _db.Cource.Include(cc => cc.Department) on sd.CourceDetails.CourceId equals c.CourceId
                    join t in _db.Teacher.Include(tt => tt.User) on sd.CourceDetails.TeacherId equals t.TeacherId
                    orderby sd.Student.StudentNo, c.CourceNo
                    select new StudertDetailViewModel
                    {
                        StudentNo = sd.Student.StudentNo,
                        Name = su.Name,
                        IsPass = sd.IsPass,
                        Score = sd.Score,
                        CourceNo = c.CourceNo,
                        CourceName = c.CourceName,
                        DepartmentName= c.Department.Name,
                        TeacherName = t.User.Name,
                        StartDate = sd.CourceDetails.StartDate,
                        EndDate = sd.CourceDetails.EndDate,
                        IsOpen = sd.CourceDetails.IsOpen,
                        IsFinished = sd.CourceDetails.IsFinished,
                    };
            return q;
        }
    }
}
