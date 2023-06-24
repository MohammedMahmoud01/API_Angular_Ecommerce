using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ApiService.Models
{
    public class ApplicationUser : IdentityUser
    {
        [Required(ErrorMessage ="You Must Enter Your First Name")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "You Must Enter Your Last Name")]
        public string LastName { get; set; }     

    }
}
