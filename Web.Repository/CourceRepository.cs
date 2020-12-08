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
        IQueryable<CourceDetail> GetCourseDetail(long courseId);
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
        public IQueryable<CourceDetail> GetCourseDetail(long courseId) 
        {
            return _db.CourceDetail.Include(t => t.Teacher).Include(c => c.Cource).Where(c => c.CourceId == courseId);
        }
    }
}
