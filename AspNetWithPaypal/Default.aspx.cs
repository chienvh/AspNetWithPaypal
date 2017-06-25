using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetWithPaypal
{
    public partial class Default : System.Web.UI.Page
    {
        PaypalEntity entity = new PaypalEntity();

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["myOrderingEntity"] = null;
            /*Note:
             In this demo I will hardcode for ordering values. So you can use this code for your reference to implement dynamic values.
             This is an easy task :)
            */
        }

        protected void btnPaypal1_Click(object sender, ImageClickEventArgs e)
        {
            SetOrderingValue("Star Trek Into Darkness","PN1","12.65","1","2");
            Response.Redirect("~/PaypalProcess.aspx");
        }

        protected void btnPaypal2_Click(object sender, ImageClickEventArgs e)
        {
            SetOrderingValue("The 5 Love Languages", "PN2", "8.99", "1", "1");
            Response.Redirect("~/PaypalProcess.aspx");
        }

        protected void btnPaypal3_Click(object sender, ImageClickEventArgs e)
        {
            SetOrderingValue("The Outsider: A Memoir", "PN3", "17.85", "1", "1");
            Response.Redirect("~/PaypalProcess.aspx");
        }

        protected void btnPaypal4_Click(object sender, ImageClickEventArgs e)
        {
            SetOrderingValue("Championship Tennis", "PN4", "13.98", "1", "3");
            Response.Redirect("~/PaypalProcess.aspx");
        }

        protected void btnPaypal5_Click(object sender, ImageClickEventArgs e)
        {
            SetOrderingValue("The Best Tennis of Your Life", "PN5", "13.17", "1", "1");
            Response.Redirect("~/PaypalProcess.aspx");
        }

        private void SetOrderingValue(string itemName, string itemNumber, string amount, string noShipping, string quantity)
        {
            entity.Business = "chien.vh@gmail.com";
            entity.ItemName = itemName;
            entity.ItemNumber = itemNumber;
            entity.Amount = amount;
            entity.NoShipping = noShipping;
            entity.Quantity = quantity;
            Session["myOrderingEntity"] = entity;
        }
    }
}