using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MVPSoftApp.Models
{
    public class ProductGroup
    {
        public int Id { get; set; }
        [Required]
        [MaxLength(1000)]
        public string GroupDescription { get; set; }
        [Required]
        [MaxLength(20)]
        public string GroupCode { get; set; }
        [Required]
        public bool Active { get; set; }
        [Required]
        public ICollection<Agreement> Agreements { get; set; }
        [Required]
        public ICollection<Product> Products { get; set; }

    }
}
