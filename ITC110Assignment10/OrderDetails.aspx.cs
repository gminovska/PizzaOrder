using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITC110Assignment10
{
    public partial class OrderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pizzaSize = Request.Form["PizzaSizeRadioButtonList"] == null ? "" : Request.Form["PizzaSizeRadioButtonList"].ToString();
            var toppings = Request.Form["ToppingsCheckBox"] == null ? new List<string>() : Request.Form["ToppingsCheckBox"].Split(',').ToList();
            var toppingString = Request.Form["ToppingsCheckBox"];
            var myOrder = new Pizza(pizzaSize, toppings);
            var total = myOrder.CalculatePrice();
            DisplayPizzaSize.Text = pizzaSize;
            DisplayPizzaToppings.Text = toppingString;
            DisplayTotal.Text = "$" + total.ToString();
          
            
        }

    }
}