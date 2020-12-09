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
    public interface ICourceRepository
    {
        IQueryable<Cource> GetCources();
        IQueryable<CourseDetailViewModel> GetCourseDetail(long courseId);
    }

    public class CourceRepository : BaseRepository<Cource>, ICourceRepository
    {
        private readonly WebContext _db;
        public CourceRepository(WebContext db)
            : base(db)
        {
            _db = db;
        }

        public IQueryable<Cource> GetCources()
        {
            return _db.Cource.Include(c => c.Department);
        }
        public IQueryable<CourseDetailViewModel> GetCourseDetail(long courseId) 
        {
            var q = from cd in _db.CourceDetail.Include(c => c.Cource)
                    join t in _db.Teacher on cd.TeacherId equals t.TeacherId
                    join tu in _db.User on t.UserId equals tu.UserId
                    where cd.CourceId == courseId
                    select new CourseDetailViewModel
                    {
                        TeacherName = tu.Name,
                        CourseName = cd.Cource.CourceName,
                        Grade = cd.Cource.Grade,
                        StartDate = cd.StartDate,
                        EndDate = cd.EndDate,
                        IsOpen = cd.IsOpen,
                        IsFinished = cd.IsFinished
                    };

            return q;
        }
    }
}
