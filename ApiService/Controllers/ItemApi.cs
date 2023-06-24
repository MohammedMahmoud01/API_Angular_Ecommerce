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
    public class ItemApi : ControllerBase
    {
        IClsItemById ctx;
        public ItemApi(IClsItemById service)
        {
            ctx = service;
        }
        // GET: api/<ItemApi>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<ItemApi>/5
        [HttpGet("{id}")]

        public ItemDetailsModel Get(int id)
        {
            ItemDetailsModel model = ctx.GetItemById(id);
            return model;
        }

        // POST api/<ItemApi>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<ItemApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<ItemApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
