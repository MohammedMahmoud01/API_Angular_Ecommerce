using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using ApiService.Models;
using Microsoft.EntityFrameworkCore;

namespace ApiService.Bl
{
    public interface IClsRelatedItem
    {
        List<ItemModel> GetRelatedItems(decimal price);
        List<ItemModel> GetRelatedItems2(decimal price);
    }
    public class ClsRelatedItem : IClsRelatedItem
    {
        ServiceContext ctx;
        public ClsRelatedItem(ServiceContext service)
        {
            ctx = service;
        }
        public List<ItemModel> GetRelatedItems(decimal price)
        {
            decimal startPrice = price - 2000;

            decimal endPrice = price + 3000;

            var query = from item in ctx.TbItems
                        join cat1 in ctx.TbCategories
                        on item.CategoryId equals cat1.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        where item.SalesPrice > startPrice && item.SalesPrice < endPrice
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

        public List<ItemModel> GetRelatedItems2(decimal price)
        {
            decimal startPrice = price + 2000;

            decimal endPrice = price + 5000;

            var query = from item in ctx.TbItems
                        join cat1 in ctx.TbCategories
                        on item.CategoryId equals cat1.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        where item.SalesPrice > startPrice && item.SalesPrice < endPrice
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
    }
}
