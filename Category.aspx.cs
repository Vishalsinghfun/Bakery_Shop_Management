using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Eggless.aspx");
    }

    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("Pudding.aspx");
    }

    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Response.Redirect("Bagels.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Pie.aspx");
    }

    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("Tarts.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Pastry.aspx");
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Breads.aspx");
    }

    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Response.Redirect("Doughnut.aspx");
    }

    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cake.aspx");
    }
}