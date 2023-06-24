using ApiService.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiService.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SliderApi : ControllerBase
    {
        ServiceContext ctx;
        public SliderApi(ServiceContext service)
        {
            ctx = service;
        }
        // GET: api/<SliderApi>
        [HttpGet]
        public IEnumerable<TbSlider> Get()
        {
            return ctx.TbSlider.ToList();
        }

        // GET api/<SliderApi>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<SliderApi>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<SliderApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<SliderApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
