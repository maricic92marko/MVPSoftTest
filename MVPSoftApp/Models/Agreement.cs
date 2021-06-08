using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MVPSoftApp.Models
{

    public  class Agreement 
    {
        /// <summary>
        /// Represents unique indetifier for agreements
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// Represents date fro witch agreement is effective
        /// </summary>
        [Required]
        public DateTime EffectiveDate { get; set; }
        /// <summary>
        /// Represents date when agreement has expired
        /// </summary>
        [Required]
        public DateTime ExpirationDate { get; set; }
        /// <summary>
        /// represents price of the product
        /// </summary>
        [Required]
        public decimal ProductPrice { get; set; }
        /// <summary>
        /// represents new price of the product
        /// </summary>
        [Required]
        public decimal NewPrice { get; set; }
        /// <summary>
        /// represents unique indentifier of products
        /// </summary>
        [Required]
        [ForeignKey("Product")]
        public int ProductId { get; set; }
        public Product Product { get; set; }
        /// <summary>
        /// represents unique identifier of peoduct groups
        /// </summary>
        [Required]
        [ForeignKey("ProductGroup")]
        public int ProductGroupId { get; set; }
        public ProductGroup ProductGroup { get; set; }
        /// <summary>
        /// represents unique identifier of useras
        /// </summary>
        [Required]
        [ForeignKey("User")]
        public string UserId { get; set; }
        public User User { get; set; }



    

    }
}
