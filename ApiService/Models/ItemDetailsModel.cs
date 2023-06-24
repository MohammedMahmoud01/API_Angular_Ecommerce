using System.Collections.Generic;

namespace ApiService.Models
{
    public class ItemDetailsModel
    {
        public ItemModel itemModel { get; set; }
        public ItemDiscountModel itemDiscountModel { get; set; }
        public List<TbImage> lstImages { get; set; }
    }
}
