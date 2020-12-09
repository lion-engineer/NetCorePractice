using System;
using System.Collections.Generic;
using System.Text;

namespace Common.ViewModel
{
    public class CourseDetailViewModel
    {
        public string TeacherName { get; set; }
        public string CourseName { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Grade { get; set; }
        public bool IsOpen { get; set; }
        public bool IsFinished { get; set; }
    }
}
