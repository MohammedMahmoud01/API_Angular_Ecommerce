using ApiService.Bl;
using ApiService.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiService.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AllItemsApi : ControllerBase
    {
        IClsHomePage ctx;
        public AllItemsApi(IClsHomePage service)
        {
            ctx = service;
        }
        // GET: api/<AllItemsApi>
        [HttpGet]
        public IEnumerable<ItemModel> Get()
        {
            return ctx.GetAllItems();
        }

        // GET api/<AllItemsApi>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<AllItemsApi>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<AllItemsApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<AllItemsApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
