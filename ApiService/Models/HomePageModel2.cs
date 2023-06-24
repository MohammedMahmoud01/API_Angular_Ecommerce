using System.Collections.Generic;

namespace ApiService.Models
{
    public class HomePageModel2
    {
        public IEnumerable<ItemModel> lstSamsung { get; set; }
        public IEnumerable<ItemModel> lstXiaomi { get; set; }
        public IEnumerable<ItemModel> lstApple { get; set; }
    }
}
