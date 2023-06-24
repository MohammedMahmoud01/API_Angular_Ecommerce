using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiService.Models
{
    public class ItemsCatModel
    {
        public IEnumerable<ItemModel> lstSamsung { get; set; }
        public IEnumerable<ItemModel> lstXiaomi { get; set; }
        public IEnumerable<ItemModel> lstApple { get; set; }
    }
}
