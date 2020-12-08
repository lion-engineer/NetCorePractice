using System;
using System.Collections.Generic;
using System.Text;

namespace Common.ViewModel
{
    public class StudertDetailViewModel
    {
        public string StudentNo { get; set; }
        public string Name { get; set; }
        public bool IsPass { get; set; }
        public int Score   { get; set; }        
        public string CourceNo { get; set; }
        public string CourceName { get; set; }
        public string DepartmentName { get; set; }
        public string TeacherName { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public bool IsOpen { get; set; }
        public bool IsFinished { get; set; }
    }
}
