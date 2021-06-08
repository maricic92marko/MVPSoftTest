using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MVPSoftApp.Models
{
    public class Product
    {
        public int Id { get; set; }
        [Required]
        [MaxLength(1000)]
        public string ProductDescription { get; set; }
        [Required]
        [MaxLength(10)]
        public string ProductNumber { get; set; }
        [Required]
        public decimal Price { get; set; }
        [Required]
        public bool Active { get; set; }
        [ForeignKey("ProductGroup")]
        public int ProductGroupId { get; set; }
        public ProductGroup ProductGroup { get; set; }
        [Required]
        public ICollection<Agreement> Agreements { get; set; }

    }
}
