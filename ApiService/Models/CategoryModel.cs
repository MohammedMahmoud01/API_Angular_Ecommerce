﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiService.Models
{
    public class CategoryModel
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string ImageCatName { get; set; }
        public int SubCategoryId { get; set; }
        public string SubCategoryName { get; set; }
        public string ImageSubCatName { get; set; }
    }
}
