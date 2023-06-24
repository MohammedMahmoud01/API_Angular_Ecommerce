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
    public class ItemsCatApi : ControllerBase
    {
        IClsItemCat ctx;
        IClsHomePage ctx2;
        public ItemsCatApi(IClsItemCat service , IClsHomePage service2)
        {
            ctx = service;
            ctx2 = service2;
        }
        // GET: api/<ItemsCatapi>
        [HttpGet]
        public ItemsCatModel Get()
        {
            ItemsCatModel cat = new ItemsCatModel();

            cat.lstSamsung = ctx.GetSamsung();

            cat.lstXiaomi = ctx.GetXiaomi();

            cat.lstApple = ctx.GetApple();

            return cat;
        }

        // GET api/<ItemsCatapi>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<ItemsCatapi>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<ItemsCatapi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<ItemsCatapi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
