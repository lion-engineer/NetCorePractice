using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Web.Service;

namespace WebService.Areas.User
{
    [Area("User")]
    public class UserController : Controller
    {
        private readonly IUserService _userService;
        private readonly IStudentService _studentService;
        private readonly ITeacherService _teacherService;
        public UserController(IUserService userService, IStudentService studentService, ITeacherService teacherService)
        {
            _userService = userService;
            _studentService = studentService;
            _teacherService = teacherService;
        }
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult GetUser() 
        {
            var user = _userService.GetUsers();
            return Json(user);
        }

        [HttpPost]
        public IActionResult GetStudents()
        {
            var students = _studentService.GetStudents();
            return Json(students);
        }

        [HttpPost]
        public IActionResult GetTeachers() 
        {
            var teachers = _teacherService.GetTeachers();
            return Json(teachers);
        }

        [HttpPost]
        public IActionResult GetStudentDetails() 
        {
            var studentDetails = _studentService.GetStudentDetails();
            return Json(studentDetails);
        }
    }
}
