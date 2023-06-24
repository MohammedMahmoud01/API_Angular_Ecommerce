using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using ApiService.Models;

namespace ApiService.Bl
{
    public interface IClsItemCat
    {
        List<ItemModel> GetSamsung();
        List<ItemModel> GetApple();
        List<ItemModel> GetXiaomi();
    }
    public class ClsItemCat : IClsItemCat
    {
        ServiceContext ctx;
        public ClsItemCat(ServiceContext service)
        {
            ctx = service;
        }
        public List<ItemModel> GetApple()
        {
            var query = from item in ctx.TbItems
                        join cat1 in ctx.TbCategories
                        on item.CategoryId equals cat1.CategoryId
                        join cat2 in ctx.TbSubCategories
                        on item.SubCategoryId equals cat2.SubCategoryId
                        where item.SubCategoryId == 2
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
                        where item.SubCategoryId == 1
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
                        where item.SubCategoryId == 3
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
