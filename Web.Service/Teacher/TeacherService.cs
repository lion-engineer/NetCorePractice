using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Web.Common.Table;
using Web.Repository;

namespace Web.Service
{
    public interface ITeacherService
    {
        List<Teacher> GetTeachers();
    }

    public class TeacherService : ITeacherService
    {
        private readonly ITeacherRepository _teacherRepository;
        public TeacherService(ITeacherRepository teacherRepository)
        {
            _teacherRepository = teacherRepository;
        }

        public List<Teacher> GetTeachers()
        {
            return _teacherRepository.GetTeachers().ToList();
        }
    }
}
