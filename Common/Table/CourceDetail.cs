using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Web.Common.Table
{
    [Table("CourceDetail", Schema = "Core")]
    public class CourceDetail
    {
        [Key]
        public long CourceDetailId { get; set; }

        [Required]
        public long CourceId { get; set; }

        [Required]
        public long TeacherId { get; set; }

        [Required]
        public DateTime StartDate { get; set; }

        [Required]
        public DateTime EndDate { get; set; }

        [Required]
        public bool IsOpen { get; set; }

        [Required]
        public bool IsFinished { get; set; }

        public virtual Cource Cource { get; set; }
        public virtual Teacher Teacher { get; set; }
    }
}
