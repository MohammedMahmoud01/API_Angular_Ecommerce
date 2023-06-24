using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace ApiService.Models
{
    public partial class TbItem
    {
        public TbItem()
        {
            TbImages = new HashSet<TbImage>();
            TbItemDiscounts = new HashSet<TbItemDiscount>();
            TbPurchaseInvoiceItems = new HashSet<TbPurchaseInvoiceItem>();
            TbSalesInvoiceItems = new HashSet<TbSalesInvoiceItem>();
        }
        [Required(ErrorMessage ="You Must Enter Item Id")]
        public int ItemId { get; set; }

        [Required(ErrorMessage = "You Must Enter Item Name")]
        public string ItemName { get; set; }

        [Required(ErrorMessage = "You Must Enter Item Name In Arabic")]
        public string ItemNameAr { get; set; }

        [Required(ErrorMessage = "You Must Enter Sales Price") , 
            Range(1000 , 100000 , ErrorMessage ="Sales price is out of range")]
        
        public decimal SalesPrice { get; set; }

        [Required(ErrorMessage = "You Must Enter Purchase Price"),
            Range(1000, 100000, ErrorMessage = "Purchase price is out of range")]
        public decimal PurchasePrice { get; set; }
        [MaxLength(1000 , ErrorMessage ="File Name is not acceptable for long")]
        public string ImageName { get; set; }

        [Required(ErrorMessage = "You Must Enter Category Id")]
        public int CategoryId { get; set; }

        [Required(ErrorMessage = "You Must Enter SubCategory Id")]
        public int SubCategoryId { get; set; }

        [Required(ErrorMessage = "You Must Enter Quantity")]
        public int Quantity { get; set; }
        public DateTime CreationDate { get; set; }
        public string CreationBy { get; set; }
        public DateTime UpdationDate { get; set; }
        public string UpdationBy { get; set; }
        public string Notes { get; set; }

        public virtual TbCategory Category { get; set; }
        public virtual TbSubCategory SubCategory { get; set; }
        public virtual ICollection<TbImage> TbImages { get; set; }
        public virtual ICollection<TbItemDiscount> TbItemDiscounts { get; set; }
        public virtual ICollection<TbPurchaseInvoiceItem> TbPurchaseInvoiceItems { get; set; }
        public virtual ICollection<TbSalesInvoiceItem> TbSalesInvoiceItems { get; set; }
    }
}
