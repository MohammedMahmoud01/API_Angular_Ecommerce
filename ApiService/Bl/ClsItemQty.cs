using ApiService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiService.Bl
{
    public interface IClsItemQty
    {
        string UpdateItemQty(List<ItemModel> CartItems);
    }
    public class ClsItemQty : IClsItemQty
    {
        ServiceContext ctx;
        public ClsItemQty(ServiceContext service)
        {
            ctx = service;
        }
        public string UpdateItemQty(List<ItemModel> CartItems)
        {

            TbItem tbItem;

            TbItemDiscount tbItemDiscount;

            foreach (var item in CartItems)
            {
                tbItem = ctx.TbItems.FirstOrDefault(x => x.ItemId == item.ItemId);

                tbItemDiscount = ctx.TbItemDiscounts.FirstOrDefault(x => x.ItemId == item.ItemId);


                tbItem.Quantity -= item.Quantity;

                if(tbItemDiscount != null)
                    tbItemDiscount.Quantity = tbItem.Quantity;

                ctx.SaveChanges();
            }
            return "Done";
        }
    }
}
