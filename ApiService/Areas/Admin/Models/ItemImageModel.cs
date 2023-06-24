using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiService.Areas.Admin.Models
{
    public class ItemImageModel
    {
        public int ImageId { get; set; }
        public string ImageName { get; set; }
        public int ItemId { get; set; }
        public string ItemName { get; set; }
    }
}
