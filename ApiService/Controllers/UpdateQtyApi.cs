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
    public class UpdateQtyApi : ControllerBase
    {
        IClsItemQty ctx;
        public UpdateQtyApi(IClsItemQty service)
        {
            ctx = service;
        }
        // GET: api/<UpdateQtyApi>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<UpdateQtyApi>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<UpdateQtyApi>
        [HttpPost]
        public string Post([FromBody] List<ItemModel> lstCartItems)
        {
            string result = ctx.UpdateItemQty(lstCartItems);

            if (result == "Done")
                return "Done";
            else
                return "False";
        }

        // PUT api/<UpdateQtyApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<UpdateQtyApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
