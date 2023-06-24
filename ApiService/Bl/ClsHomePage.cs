using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using ApiService.Models;
using Microsoft.EntityFrameworkCore;

namespace ApiService.Bl
{
    public interface IClsHomePage
    {
        List<ItemModel> GetAllItems();
        List<ItemModel> GetPopularItems();
        List<ItemModel> GetPopularItems2();
        List<TbSlider> GetSliders();
        List<ItemDiscountModel> GetItemsDiscount();
        List<ItemModel> GetSamsung();
        List<ItemModel> GetApple();
        List<ItemModel> GetXiaomi();
    }
    public class ClsHomePage : IClsHomePage
    {
        ServiceContext ctx;
        public ClsHomePage(ServiceContext context)
        {
            ctx = context;
        }

        public List<ItemModel> GetAllItems()
        {
            var query = from item in ctx.TbItems
                        join cat1 in ctx.TbCategories
                        on item.CategoryId equals cat1.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        select new ItemModel
                        {
                            ItemId = item.ItemId,
                            ItemName = item.ItemName,
                            ItemNameAr = item.ItemNameAr,
                            SalesPrice = item.SalesPrice,
                            ImageName = item.ImageName,
                            PurchasePrice = item.PurchasePrice,
                            CategoryName = cat1.CategoryName,
                            SubCategoryName = cat2.SubCategoryName,
                            CategoryId = item.CategoryId,
                            SubCategoryId = item.SubCategoryId,
                            Quantity = item.Quantity
                        };
            return query.ToList();

        }

        public List<ItemModel> GetPopularItems()
        {
            var query = from item in ctx.TbItems
                        join cat1 in ctx.TbCategories
                        on item.CategoryId equals cat1.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        where item.SalesPrice > 6000
                        select new ItemModel
                        {
                            ItemId = item.ItemId,
                            ItemName = item.ItemName,
                            ItemNameAr = item.ItemNameAr,
                            SalesPrice = item.SalesPrice,
                            ImageName = item.ImageName,
                            PurchasePrice = item.PurchasePrice,
                            CategoryName = cat1.CategoryName,
                            SubCategoryName = cat2.SubCategoryName,
                            CategoryId = item.CategoryId,
                            SubCategoryId = item.SubCategoryId,
                            Quantity = item.Quantity
                        };
            return query.ToList();

        }

        public List<ItemModel> GetPopularItems2()
        {
            var query = from item in ctx.TbItems
                        join cat1 in ctx.TbCategories
                        on item.CategoryId equals cat1.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        where item.SalesPrice > 2000 && item.SalesPrice < 9000
                        select new ItemModel
                        {
                            ItemId = item.ItemId,
                            ItemName = item.ItemName,
                            ItemNameAr = item.ItemNameAr,
                            SalesPrice = item.SalesPrice,
                            ImageName = item.ImageName,
                            PurchasePrice = item.PurchasePrice,
                            CategoryName = cat1.CategoryName,
                            SubCategoryName = cat2.SubCategoryName,
                            CategoryId = item.CategoryId,
                            SubCategoryId = item.SubCategoryId,
                            Quantity = item.Quantity
                        };
            return query.ToList();

        }

        public List<ItemDiscountModel> GetItemsDiscount()
        {
            var query = from itemDiscount in ctx.TbItemDiscounts
                        join item in ctx.TbItems
                        on itemDiscount.ItemId equals item.ItemId
                        join cat in ctx.TbCategories
                        on item.CategoryId equals cat.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        select new ItemDiscountModel
                        {
                            ItemId = itemDiscount.ItemId,
                            ItemDiscountId = itemDiscount.ItemDiscountId,
                            ImageName = itemDiscount.ImageName,
                            SalesPrice = itemDiscount.SalesPrice,
                            StartDate = itemDiscount.StartDate,
                            EndDate = itemDiscount.EndDate,
                            DiscountPrice = itemDiscount.DiscountPrice,
                            CategoryName = cat.CategoryName,
                            SubCategoryName = cat2.SubCategoryName,
                            CategoryId = item.CategoryId,
                            SubCategoryId = item.SubCategoryId,
                            ItemName = item.ItemName,
                            ItemNameAr = item.ItemNameAr,
                            Quantity = itemDiscount.Quantity
                        };
            return query.ToList();
        }

        public List<TbSlider> GetSliders()
        {
            return ctx.TbSlider.ToList();
        }

        public List<ItemModel> GetApple()
        {
            var query = from item in ctx.TbItems
                        join cat1 in ctx.TbCategories
                        on item.CategoryId equals cat1.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        where item.SubCategoryId == 2 && item.SalesPrice > 10000
                        select new ItemModel
                        {
                            ItemId = item.ItemId,
                            ItemName = item.ItemName,
                            ItemNameAr = item.ItemNameAr,
                            SalesPrice = item.SalesPrice,
                            ImageName = item.ImageName,
                            PurchasePrice = item.PurchasePrice,
                            CategoryName = cat1.CategoryName,
                            SubCategoryName = cat2.SubCategoryName,
                            Quantity = item.Quantity,
                            SubCategoryId = cat2.SubCategoryId,
                            CategoryId = cat1.CategoryId
                        };
            return query.ToList();
        }

        public List<ItemModel> GetSamsung()
        {
            var query = from item in ctx.TbItems
                        join cat1 in ctx.TbCategories
                        on item.CategoryId equals cat1.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        where item.SubCategoryId == 1 && item.SalesPrice > 6000
                        select new ItemModel
                        {
                            ItemId = item.ItemId,
                            ItemName = item.ItemName,
                            ItemNameAr = item.ItemNameAr,
                            SalesPrice = item.SalesPrice,
                            ImageName = item.ImageName,
                            PurchasePrice = item.PurchasePrice,
                            CategoryName = cat1.CategoryName,
                            SubCategoryName = cat2.SubCategoryName,
                            Quantity = item.Quantity,
                            SubCategoryId = cat2.SubCategoryId,
                            CategoryId = cat1.CategoryId
                        };
            return query.ToList();
        }

        public List<ItemModel> GetXiaomi()
        {
            var query = from item in ctx.TbItems
                        join cat1 in ctx.TbCategories
                        on item.CategoryId equals cat1.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        where item.SubCategoryId == 3 && item.SalesPrice > 6000
                        select new ItemModel
                        {
                            ItemId = item.ItemId,
                            ItemName = item.ItemName,
                            ItemNameAr = item.ItemNameAr,
                            SalesPrice = item.SalesPrice,
                            ImageName = item.ImageName,
                            PurchasePrice = item.PurchasePrice,
                            CategoryName = cat1.CategoryName,
                            SubCategoryName = cat2.SubCategoryName,
                            Quantity = item.Quantity,
                            SubCategoryId = cat2.SubCategoryId,
                            CategoryId = cat1.CategoryId
                        };
            return query.ToList();
        }
    }
}
