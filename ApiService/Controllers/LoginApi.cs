using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ApiService.Models;
using Microsoft.AspNetCore.Identity;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiService.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginApi : ControllerBase
    {
        SignInManager<ApplicationUser> SignInManager;
        UserManager<ApplicationUser> userManager;
        public LoginApi(SignInManager<ApplicationUser> manager1 , UserManager<ApplicationUser> manager)
        {
            SignInManager = manager1;
            userManager = manager;
        }

        // GET: api/<LoginApi>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<LoginApi>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<LoginApi>
        [HttpPost]
        public async Task<UserModel> PostAsync([FromBody] UserModel userModel)
        {
            try
            {
                if (string.IsNullOrEmpty(userModel.Email) || string.IsNullOrEmpty(userModel.Password))
                    return new UserModel();
                else
                {
                    var result = await SignInManager.PasswordSignInAsync(userModel.Email,
                  userModel.Password, true, true);

                    if (result.Succeeded)
                    {
                        await SignInManager.SignOutAsync();

                        var findUser = await userManager.FindByNameAsync(userModel.Email);

                        return new UserModel()
                        {
                            Email = findUser.Email,
                            FirstName = findUser.FirstName,
                            LastName = findUser.LastName
                        };
                    }
                    return new UserModel();
                }              
            }
            catch (Exception ex)
            {
                return new UserModel();
            }
            
        }

        // PUT api/<LoginApi>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {

        }

        // DELETE api/<LoginApi>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
