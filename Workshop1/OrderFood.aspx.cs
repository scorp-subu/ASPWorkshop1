using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Workshop1.Models;

namespace Workshop1
{

    public partial class Form1 : System.Web.UI.Page
    {
        public static List<Order> orderlist = new List<Order>();
        protected void Page_Load(object sender, EventArgs e)
        {
            //String[] spice = new string []{ "More Sugar", "More Salt" };
            //CBL_Spices.DataSource = spice;
            //CBL_Spices.DataBind();
            //if (IsPostBack)
            //{
            //    ClearAllItems();
            //}
        }

        protected void Btn_Addtocart_Click(object sender, EventArgs e)
        {
         
            Order o1 = new Order();
            o1.Cust_name = Txtbox_Customer.Text;
            o1.Dishname = DDL_Dish.SelectedValue;
            o1.OrderSize = RBL_DishSize.SelectedValue;

            foreach (ListItem item in CBL_Spices.Items)
            {
               if( item.Selected)
                {
                    o1.Spices.Add(item.Text);
                }

            }
            orderlist.Add(o1);
            ClearAllItems();
        }
        public void ClearAllItems()
        {
            Txtbox_Customer.Text = String.Empty;
            CBL_Spices.ClearSelection();
        }
    }
}