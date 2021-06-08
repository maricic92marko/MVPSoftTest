using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MVPSoftApp.Models
{
    public class AddAgreementsViewModel
    {
        /// <summary>
        /// Represents list of product groups
        /// </summary>
        public List<ProductGroup> ProductGroupList { get; set; }
        /// <summary>
        /// Represents list of products
        /// </summary>
        public List<Product> ProductList { get; set; }
        /// <summary>
        /// Represents list of Users
        /// </summary>
        public List<User> UsersList { get; set; }
    }
}
