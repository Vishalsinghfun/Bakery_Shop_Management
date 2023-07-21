using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ViewOrderDetailAdmin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
    SqlCommand cmd3;
    int orderid;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from tbl_Order join  tbl_Product on tbl_Order.product_id=tbl_Product.pr_id join tbl_Registration on tbl_Order.Cus_id = tbl_Registration.regi_id where tbl_Order.odr_id='" + Request.QueryString["id".ToString()] + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
           lblAddress.Text= dr[23].ToString();
           lblCustomerContact.Text= dr[22].ToString();
            lblCustomerName.Text= dr[16].ToString();
            lblDeliveryDate.Text= dr[2].ToString();
            lblDescription.Text= dr[12].ToString();
            lblOrderDate.Text= dr[1].ToString();
            lblProductFoodType.Text= dr[13].ToString();
            lblProductPrice.Text= dr[4].ToString();
            lblProductType.Text= dr[10].ToString();
            lblProdutName.Text= dr[9].ToString();
            lblQuantity.Text= dr[3].ToString();
            Image1.ImageUrl= dr[14].ToString();
        }
        dr.Close();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("OrderDetailsAdmin.aspx");
    }
}