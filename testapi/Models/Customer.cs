using System.ComponentModel.DataAnnotations;

namespace testapi.Models
{
    public class Customer
    {
        public int id { get; set; }
        [Required]
        [StringLength(12, MinimumLength = 12, ErrorMessage = "Maximal 12 char")]
        public string phonenumber { get; set; }
        [Required]
        [StringLength(200, MinimumLength = 1, ErrorMessage = "Fill the name")]
        public string name { get; set; }
        [Required]
        [StringLength(50, MinimumLength = 1, ErrorMessage = "Fill the Address")]
        public string Address { get; set; }
        public string email { get; set; }
        public string password { get; set; }
    }
}
