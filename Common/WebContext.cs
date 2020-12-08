using Microsoft.EntityFrameworkCore;
using System;
using Web.Common.Table;

namespace Web.Common
{
    public class WebContext : DbContext
    {
        public WebContext(DbContextOptions<WebContext> options) : base(options)
        {

        }

        public DbSet<User> User { get; set; }
        public DbSet<Student> Student { get; set; }
        public DbSet<StudentDetail> StudentDetail { get; set; }
        public DbSet<Department> Department { get; set; }
        public DbSet<Teacher> Teacher { get; set; }
        public DbSet<Cource> Cource { get; set; }
        public DbSet<CourceDetail> CourceDetail { get; set; }
    }
}
