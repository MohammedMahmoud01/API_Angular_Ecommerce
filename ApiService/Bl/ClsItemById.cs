using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using ApiService.Models;
namespace ApiService.Bl
{
    public interface IClsItemById
    {
        ItemDetailsModel GetItemById(int id);
        ItemDetailsModel GetItemsDiscount(int id);
    }
    public class ClsItemById : IClsItemById
    {
        ServiceContext ctx;
        public ClsItemById(ServiceContext service)
        {
            ctx = service;
        }
        public ItemDetailsModel GetItemById(int id)
        {
            ItemDetailsModel model = new ItemDetailsModel();

            var query = from item in ctx.TbItems
                        join cat in ctx.TbCategories
                        on item.CategoryId equals cat.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        where item.ItemId == id
                        select new ItemModel
                        {
                            ItemId = item.ItemId,
                            ItemName = item.ItemName,
                            ItemNameAr = item.ItemNameAr,
                            SalesPrice = item.SalesPrice,
                            PurchasePrice = item.PurchasePrice,
                            CategoryName = cat.CategoryName,
                            CategoryId = cat.CategoryId,
                            ImageName = item.ImageName,
                            SubCategoryName = cat2.SubCategoryName,
                            SubCategoryId = cat2.SubCategoryId,
                            Quantity = item.Quantity
                        };

            var query2 = ctx.TbImages.Where(x=>x.ItemId == id).ToList();

            model.itemModel = query.FirstOrDefault();

            model.lstImages = query2;

            return model;
        }

        public ItemDetailsModel GetItemsDiscount(int id)
        {
            ItemDetailsModel model = new ItemDetailsModel();

            var query = from itemDiscount in ctx.TbItemDiscounts
                        join item in ctx.TbItems
                        on itemDiscount.ItemId equals item.ItemId
                        join cat in ctx.TbCategories
                        on item.CategoryId equals cat.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        where itemDiscount.ItemDiscountId == id
                        select new ItemDiscountModel
                        {
                            ItemId = itemDiscount.ItemId,
                            ItemDiscountId = itemDiscount.ItemDiscountId,
                            ItemName = item.ItemName,
                            ItemNameAr = item.ItemNameAr,
                            ImageName = itemDiscount.ImageName,
                            SalesPrice = itemDiscount.SalesPrice,
                            StartDate = itemDiscount.StartDate,
                            EndDate = itemDiscount.EndDate,
                            DiscountPrice = itemDiscount.DiscountPrice,
                            CategoryName = cat.CategoryName,
                            CategoryId = cat.CategoryId,
                            SubCategoryName = cat2.SubCategoryName,
                            SubCategoryId = cat2.SubCategoryId,
                            Quantity = itemDiscount.Quantity
                        };

            model.itemDiscountModel = query.FirstOrDefault();

            var query2 = ctx.TbImages.Where(x => x.ItemId == id).ToList();

            model.lstImages = query2;

            return model;
        }
    }
}
