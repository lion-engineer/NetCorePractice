using Common.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Web.Common.Table;
using Web.Repository;

namespace Web.Service
{
    public interface ICourceService
    {
        List<Cource> GetCources();
        List<CourseDetailViewModel> GetCourseDetail(long courseId);
    }

    public class CourceService : ICourceService
    {
        private readonly ICourceRepository _courceRepository;
        public CourceService(ICourceRepository courceRepository)
        {
            _courceRepository = courceRepository;
        }

        public List<Cource> GetCources()
        {
            return _courceRepository.GetCources().ToList();
        }

        public List<CourseDetailViewModel> GetCourseDetail(long courseId) 
        {
            return _courceRepository.GetCourseDetail(courseId).ToList();
        }
    }
}
