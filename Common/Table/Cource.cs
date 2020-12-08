using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Web.Common.Table
{
    [Table("Cource", Schema = "Core")]
    public class Cource
    {
        [Key]
        public long CourceId { get; set; }

        [Required]
        public long DepartmentId { get; set; }

        [Required]
        public string CourceNo { get; set; }

        [Required]
        public string CourceName { get; set; }

        [Required]
        public string Grade { get; set; }

        [Required]
        public int MaxStudent { get; set; }

        [Required]
        public int MinStudent { get; set; }

        public virtual Department Department { get; set; }

        public virtual ICollection<CourceDetail> CourceDetails { get; set; } = new List<CourceDetail>();
    }
}
