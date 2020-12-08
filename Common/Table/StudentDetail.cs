using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Web.Common.Table
{
    [Table("StudentDetail", Schema = "Core")]
    public class StudentDetail
    {
        [Key]
        public long StuedentDetailId { get; set; }

        [Required]
        public long StudentId { get; set; }

        [Required]
        public long CourceDetailId { get; set; }

        [Required]
        public int Score { get; set; }

        [Required]
        public bool IsPass { get; set; }

        public virtual Student Student { get; set; }

        public virtual CourceDetail CourceDetails { get; set; }
    }
}
