using ApiService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiService.Bl
{
    public interface IClsCategory
    {
        List<CategoryModel> GetCategories();
    }
    public class ClsCategory : IClsCategory
    {
        ServiceContext ctx;
        public ClsCategory(ServiceContext service)
        {
            ctx = service;
        }

        public List<CategoryModel> GetCategories()
        {
            var query = from cat in ctx.TbCategories
                        join subCat in ctx.TbSubCategories
                        on cat.CategoryId equals subCat.CategoryId
                        select new CategoryModel
                        {
                            CategoryId = cat.CategoryId,
                            CategoryName = cat.CategoryName,
                            ImageCatName = cat.ImageName,
                            SubCategoryId = subCat.SubCategoryId,
                            SubCategoryName = subCat.SubCategoryName,
                            ImageSubCatName = subCat.ImageName
                        };
            return query.ToList();
        }
    }
}
