using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetWithPaypal
{
    public partial class PaypalProcess : System.Web.UI.Page
    {
        PaypalEntity pe = new PaypalEntity();        

        protected string BusinessValue { get; set; }
        protected string ItemNameValue { get; set; }
        protected string ItemNumberValue { get; set; }
        protected string AmountValue { get; set; }
        protected string NoShippingValue { get; set; }
        protected string QuantityValue { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                pe = (PaypalEntity)Session["myOrderingEntity"];

                this.BusinessValue = pe.Business;
                this.ItemNameValue = pe.ItemName;
                this.ItemNumberValue = pe.ItemNumber;
                this.AmountValue = pe.Amount;
                this.NoShippingValue = pe.NoShipping;
                this.QuantityValue = pe.Quantity;
            }
        }
    }
}