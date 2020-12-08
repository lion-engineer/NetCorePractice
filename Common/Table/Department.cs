using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Web.Common.Table
{
    [Table("Department", Schema = "Core")]
    public class Department
    {
        [Key]     
        public long DepartmentId { get; set; }

        [Required]
        public string DepartmentNo { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        public DateTime StartDate { get; set; }

        public DateTime? EndDate { get; set; }

        [Required]
        public bool IsActive { get; set; }
    }
}
