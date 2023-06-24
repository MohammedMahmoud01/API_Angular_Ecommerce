using System;
using ApiService.Bl;
using ApiService.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiService.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RelatedItemsApi : ControllerBase
    {
        IClsRelatedItem ctx;
        public RelatedItemsApi(IClsRelatedItem service)
        {
            ctx = service;
        }
        // GET: api/<RelatedItemsApi>
        [HttpGet]
        public IEnumerable<string> Get()
        {

            return new string[] { "value1", "value2" };
        }

        // GET api/<RelatedItemsApi>/5
        [HttpGet("{price}")]
        public RelatedItemModel Get(decimal price)
        {       
            RelatedItemModel model = new RelatedItemModel();

            model.lstRelatedItems = ctx.GetRelatedItems(price);

            model.lstRelatedItems2 = ctx.GetRelatedItems2(price);

            return model;
        }

        // POST api/<RelatedItemsApi>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<RelatedItemsApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<RelatedItemsApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
