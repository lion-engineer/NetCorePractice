using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Web.Common.Table
{
    [Table("Teacher", Schema = "Core")]
    public class Teacher
    {
        [Key]      
        public long TeacherId { get; set; }

        [Required]
        public long UserId { get; set; }

        [Required]
        public long DepartmentId { get; set; }

        [Required]
        public string TeacherNo { get; set; }

        [Required]
        public DateTime TakeOfficeDate { get; set; }

        [Required]
        public bool IsOnBoard { get; set; }

        [Required]
        public bool IsLeave { get; set; }
        public DateTime? LeaveOfficeDate { get; set; }

        public virtual User User { get; set; }
        public virtual Department Department { get; set; }
        public virtual ICollection<CourceDetail> CourceDetails { get; set; } = new List<CourceDetail>();
    }
}
