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
    public class HomePageApi2 : ControllerBase
    {
        HomePageModel2 model = new HomePageModel2();

        IClsHomePage ctx;

        public HomePageApi2(IClsHomePage service)
        {
            ctx = service;
        }
        // GET: api/<HomePageApi2>
        [HttpGet]
        public HomePageModel2 Get()
        {
            model.lstSamsung = ctx.GetSamsung().Take(6);

            model.lstXiaomi = ctx.GetXiaomi().Take(6);

            model.lstApple = ctx.GetApple().Take(5);

            return model;
        }

        // GET api/<HomePageApi2>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<HomePageApi2>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<HomePageApi2>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<HomePageApi2>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
