using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace ApiService.Models
{
    public class HomePageModel
    {
        public IEnumerable<ItemModel> lstNewItems { get; set; }
        public IEnumerable<ItemModel> lstPopularItems { get; set; }
        public IEnumerable<ItemDiscountModel> lstItemsDiscount { get; set; }

    }
}
