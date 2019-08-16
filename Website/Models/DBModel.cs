using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Website.Models
{
    public class DBModel : DbContext
    {
        public DBModel()
            : base("name=CustomersEntities")
        {
        }


        public DbSet<User> user { get; set; }
        public DbSet<Location> location { get; set; }
        public DbSet<caidatthongso> caidat { get; set; }
    }
}