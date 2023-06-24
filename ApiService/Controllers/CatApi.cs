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
    public class CatApi : ControllerBase
    {
        IClsCategory ctx;
        public CatApi(IClsCategory service)
        {
            ctx = service;
        }
        // GET: api/<CatApi>
        [HttpGet]
        public List<CategoryModel> Get()
        {
            return ctx.GetCategories();
        }

        // GET api/<CatApi>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<CatApi>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<CatApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<CatApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
