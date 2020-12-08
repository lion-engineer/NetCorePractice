using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Web.Common.Table;
using Web.Repository;

namespace Web.Service
{
    public interface IStudentService
    {
        List<Student> GetStudents();
    }

    public class StudentService : IStudentService
    {
        private readonly IStudentRepository _studentRepository;
        public StudentService(IStudentRepository studentRepository)
        {
            _studentRepository = studentRepository;
        }

        public List<Student> GetStudents()
        {
            return _studentRepository.GetStudents().ToList();
        }
    }
}
