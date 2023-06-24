using ApiService.Bl;
using ApiService.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiService.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ItemsListApi : ControllerBase
    {
        IClsHomePage ctx;
        public ItemsListApi(IClsHomePage service)
        {
            ctx = service;
        }
        // GET: api/<ItemsListApi>
        [HttpGet]
        public ListItemsModel Get()
        {
            ListItemsModel model = new ListItemsModel();

            model.lstPopularItems = ctx.GetPopularItems();

            model.lstNewItems = ctx.GetAllItems().Where(x => x.SalesPrice > 5000).ToList();

            return model;
        }

        // GET api/<ItemsListApi>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<ItemsListApi>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<ItemsListApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<ItemsListApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
