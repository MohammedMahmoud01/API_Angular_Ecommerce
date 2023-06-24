using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ApiService.Models
{
    public partial class TbMobileLogo
    {
        public int LogoId { get; set; }
        public string ImageName { get; set; }
        public string Descreption { get; set; }
        public string LongDescreption { get; set; }
    }
}
