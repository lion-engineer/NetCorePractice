using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Web.Common.Table
{
    [Table("User", Schema = "Core")]
    public class User
    {
        [Key]
        [Column("UserId", TypeName = "bigint")]           
        public long UserId { get; set; }

        [Column("Name")]
        [StringLength(10)]
        [Required]
        public string Name { get; set; }

        [Column("UserNo")]
        [StringLength(10)]
        [Required]
        public string UserNo { get; set; }

        [Column("Sex")]
        [StringLength(1)]
        [Required]
        public string Sex { get; set; }

        [Required]
        [Column("Birthday", TypeName = "date")]
        public DateTime Birthday { get; set; }

        [Column("Phone")]
        [StringLength(30)]
        [Required]
        public string Phone { get; set; }

        [Column("Address")]
        [StringLength(100)]
        [Required]
        public string Address { get; set; }

        [Column("UserType")]
        [StringLength(1)]
        [Required]
        public string UserType { get; set; }

        [NotMapped]
        public string UserTypeName { 
            get 
            {
                switch (UserType) 
                {
                    case "0":
                        return "學生";
                    case "1":
                        return "教師";
                    default:
                        return string.Empty;
                }
            }
        }
    }
}
