using ApiService.Bl;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ApiService.Models;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiService.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ItemDiscountApi : ControllerBase
    {
        IClsItemById ctx;
        public ItemDiscountApi(IClsItemById service)
        {
            ctx = service;
        }
        // GET: api/<ItemDiscountApi>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<ItemDiscountApi>/5
        [HttpGet("{id}")]
        public ItemDetailsModel Get(int id)
        {
            ItemDetailsModel model = ctx.GetItemsDiscount(id);
            return model;
        }

        // POST api/<ItemDiscountApi>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<ItemDiscountApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<ItemDiscountApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
