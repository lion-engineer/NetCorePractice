using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Common.Enum
{
    public enum UserTypeEnum
    {
        [Display(Name ="學生")]
        Student = 0,
        [Display(Name = "教師")]
        Teacher = 1
    }
}
