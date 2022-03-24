using Microsoft.EntityFrameworkCore;
namespace testapi.Models
{
    public class Customercontext : DbContext
    {
        public Customercontext(DbContextOptions<Customercontext> options) : base(options)
        {

        }
        public DbSet<Customer> customer { get; set; }
    }
}

