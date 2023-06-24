using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ApiService.Areas.Admin.Bl;
using System.IO;
using ApiService.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;

namespace ApiService.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "Admin")]
    public class CategoryController : Controller
    {
        IClsCategory ctx;
        public CategoryController(IClsCategory service)
        {
            ctx = service;
        }
        public IActionResult CategoryDT()
        {
            return View(ctx.GetCategories());
        }
        public IActionResult Edit(int? Id)
        {
            if (Id == null)
                return View();
            else
            {
                return View(ctx.GetById(Convert.ToInt32(Id)));
            }
        }

        public IActionResult Delete(int Id)
        {
            ctx.Delete(Id);
            return RedirectToAction("CategoryDT");
        }

        [HttpPost]
        public async Task<IActionResult> Save(TbCategory cat , List<IFormFile> Files)
        {
            if (ModelState.IsValid)
            {
                foreach (var file in Files)
                {
                    if (file.Length > 0)
                    {
                        string ImageName = Guid.NewGuid().ToString() + ".jpg";
                        var filePaths = Path.Combine(Directory.GetCurrentDirectory(), @"wwwroot\Uploads", ImageName);
                        using (var stream = System.IO.File.Create(filePaths))
                        {
                            await file.CopyToAsync(stream);
                        }
                        cat.ImageName = ImageName;
                    }
                }

                if (cat.CategoryId == 0)
                    ctx.Add(cat);
                else
                    ctx.Edit(cat);
                return RedirectToAction("CategoryDT");
            }
            else
                return RedirectToAction("Edit");
        }           
    }
}
