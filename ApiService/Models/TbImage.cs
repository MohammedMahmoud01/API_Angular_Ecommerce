using System;
using System.Collections.Generic;

#nullable disable

namespace ApiService.Models
{
    public partial class TbImage
    {
        public int ImageId { get; set; }
        public string ImageName { get; set; }
        public int ItemId { get; set; }

        public virtual TbItem Item { get; set; }
    }
}
