using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ApiService.Bl;
using ApiService.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiService.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HomePageApi : ControllerBase
    {
        HomePageModel model = new HomePageModel();

        IClsHomePage ctx;

        public HomePageApi(IClsHomePage service)
        {
            ctx = service;
        }
        // GET: api/<HomePageApi>
        [HttpGet]
        public HomePageModel Get()
        {
            model.lstNewItems = ctx.GetAllItems().Where(x => x.SalesPrice > 9000).Skip(4).Take(5);

            model.lstPopularItems = ctx.GetPopularItems2().Skip(5).Take(5); 

            model.lstItemsDiscount = ctx.GetItemsDiscount();

            return model;
        }
        // GET api/<HomePageApi>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "";
        }

        // POST api/<HomePageApi>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<HomePageApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<HomePageApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
