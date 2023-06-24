using ApiService.Models;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ApiService.Bl;
using Newtonsoft.Json.Serialization;
using ApiService.Areas.Admin.Bl;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authentication.Cookies;

namespace ApiService
{
    public class Startup
    {
        IConfiguration config;
        public Startup(IConfiguration configuration)
        {
            config = configuration;
        }

        //public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllersWithViews();
            

            services.AddDbContext<ServiceContext>
                (options => options.UseSqlServer(config.GetConnectionString("DefaultConnection")));

            services.AddScoped<IClsHomePage, ClsHomePage>();

            services.AddScoped<IClsItemById, ClsItemById>();

            services.AddScoped<IClsItemCat, ClsItemCat>();

            services.AddScoped<IClsItemImage, ClsItemImage>();

            services.AddScoped<IClsItem, ClsItem>();

            services.AddScoped<IClsItemDiscount, ClsItemDiscount>();

            services.AddScoped<IClsSlider, ClsSlider>();

            services.AddScoped<Areas.Admin.Bl.IClsCategory, Areas.Admin.Bl.ClsCategory>();

            services.AddScoped<Bl.IClsCategory, Bl.ClsCategory>();

            services.AddScoped<IClsSubCategory, ClsSubCategory>();

            services.AddScoped<IClsItemQty, ClsItemQty>();

            services.AddScoped<IClsRelatedItem, ClsRelatedItem>();

            services.AddControllers().AddNewtonsoftJson(options => 
            { 
                options.SerializerSettings.ContractResolver = new DefaultContractResolver();
            
            });

            services.AddCors(options =>
            {
                options.AddPolicy("AllowAll",
                    builder =>
                    {
                        builder
                        .AllowAnyOrigin()
                        .AllowAnyMethod()
                        .AllowAnyHeader();
                        
                    });
            });


            //Identity Framwork
            services.AddIdentity<ApplicationUser, IdentityRole>(options =>
            {
                options.Password.RequireUppercase = true;

                options.Password.RequiredLength = 8;

                options.User.RequireUniqueEmail = true;
            }).AddEntityFrameworkStores<ServiceContext>();
            // End Identity Framwork

            services.ConfigureApplicationCookie(options => {

                options.AccessDeniedPath = "/Users/AccessDenied";
                options.Cookie.Name = "Cookie";
                options.Cookie.HttpOnly = true;
                options.ExpireTimeSpan = TimeSpan.FromMinutes(720);
                options.LoginPath = "/Users/Login";
                options.ReturnUrlParameter = CookieAuthenticationDefaults.ReturnUrlParameter;
                options.SlidingExpiration = true;
            });

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseCors("AllowAll");

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                name: "areas",
                pattern: "{area:exists}/{controller=Home}/{action=Index}");

                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Users}/{action=Login}/{id?}");
            });
            app.UseEndpoints(endpoints => {
                endpoints.MapControllers();
            });
        }
    }
}
