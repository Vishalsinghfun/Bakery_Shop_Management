using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderDetailsAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Reply")
        {
            Response.Redirect("ReplyAdmin.aspx?id=" + e.CommandArgument.ToString());
        }
        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("ViewOrderDetailAdmin.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}