using System.Collections.Generic;

namespace ApiService.Models
{
    public class ListItemsModel
    {
        public IEnumerable<ItemModel> lstPopularItems { get; set; }
        public IEnumerable<ItemModel> lstNewItems { get; set; }
    }
}
