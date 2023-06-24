using System.Collections.Generic;

namespace ApiService.Models
{
    public class RelatedItemModel
    {
        public IEnumerable<ItemModel> lstRelatedItems { get; set; }
        public IEnumerable<ItemModel> lstRelatedItems2 { get; set; }
    }
}
