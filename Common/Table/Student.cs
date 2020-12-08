using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Web.Common.Table
{
    [Table("Student", Schema = "Core")]
    public class Student
    {
        [Key]
        public long StudentId { get; set; }

        [Required]
        public long DepartmentId { get; set; }

        [Required]
        public long UserId { get; set; }

        [Required]
        [StringLength(50)]
        public string StudentNo { get; set; }

        [Required]
        [StringLength(10)]
        public string Grade { get; set; }

        [Required]
        public DateTime StartYear { get; set; }

        [Required]
        public bool IsGraduation { get; set; }
        public DateTime? EndYear { get; set; }

        public virtual User User { get; set; }
        public virtual Department Department { get; set; }
        public virtual ICollection<StudentDetail> StudentDetails { get; set; } = new List<StudentDetail>();
    }
}
