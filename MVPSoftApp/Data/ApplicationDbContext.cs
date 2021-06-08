using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using MVPSoftApp.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace MVPSoftApp.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<ProductGroup> ProductGroup { get; set; }
        public DbSet<Product> Product { get; set; }
        public DbSet<Agreement> Agreement { get; set; }
        public DbSet<User> User { get; set; }
    }
}
