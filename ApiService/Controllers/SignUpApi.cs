using Microsoft.AspNetCore.Identity;
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
    public class SignUpApi : ControllerBase
    {
        UserManager<ApplicationUser> userManager;

        public SignUpApi(UserManager<ApplicationUser> manager)
        {
            userManager = manager;
        }

        // GET: api/<SignUpApi>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<SignUpApi>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<SignUpApi>
        [HttpPost]
        public async Task<string> PostAsync([FromBody] UserModel userModel)
        {
            try
            {
                if (string.IsNullOrEmpty(userModel.Email) || string.IsNullOrEmpty(userModel.Password)
                    || string.IsNullOrEmpty(userModel.FirstName) || string.IsNullOrEmpty(userModel.LastName))
                    return "False";

                var user = new ApplicationUser()
                {
                    FirstName = userModel.FirstName,
                    LastName = userModel.LastName,
                    Email = userModel.Email,
                    UserName = userModel.Email
                };

                var result = await userManager.CreateAsync(user, userModel.Password);
                
                if (result.Succeeded)
                    return "Done";
                else
                    return "False";
            }
            catch(Exception ex)
            {
                return ex.Message;
            }
        }

        // PUT api/<SignUpApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<SignUpApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
