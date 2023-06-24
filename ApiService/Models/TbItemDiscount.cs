using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace ApiService.Models
{
    public partial class TbItemDiscount
    {
        public int ItemDiscountId { get; set; }
        public int ItemId { get; set; }
        public string ImageName { get; set; }
        [Required(ErrorMessage = "You Must Enter SalesPrice")]
        public decimal SalesPrice { get; set; }
        [Required(ErrorMessage = "You Must Enter Discount Percent")]
        public double DiscountPercent { get; set; }
        [Required(ErrorMessage = "You Must Enter DiscountPrice")]
        public decimal DiscountPrice { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        [Required(ErrorMessage = "You Must Enter Quantity")]
        public int Quantity { get; set; }

        public virtual TbItem Item { get; set; }
    }
}
