using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Entity;
using PruebaCortaJesusDelgado.Context.Entities;

namespace PruebaCortaJesusDelgado.Context
{
    public class MyDbContext : DbContext
    {
        public MyDbContext() : base("name=MyConnectionString")
        {
        }


        public DbSet<Resort> resorts { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Resort>().ToTable("Resorts");
            modelBuilder.Entity<Resort>().HasKey(c => c.ResortId);
            modelBuilder.Entity<Resort>().Property(c => c.Name).HasMaxLength(255);
            modelBuilder.Entity<Resort>().Property(c => c.Description).HasMaxLength(255);
            modelBuilder.Entity<Resort>().Property(c => c.Photo).HasMaxLength(255);
            modelBuilder.Entity<Resort>().Property(c => c.Price);
        }
    }
}