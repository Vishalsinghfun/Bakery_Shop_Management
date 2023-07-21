using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class StatusTrackingUser : System.Web.UI.Page
{

    string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataTable DT = new DataTable();
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from tbl_AdminReply join tbl_Order on tbl_AdminReply.Order_id=tbl_Order.odr_id join tbl_Product on tbl_Order.product_id = tbl_Product.pr_id join tbl_Registration on tbl_Order.Cus_id = tbl_Registration.regi_id where regi_Username='" + Session["Username"] + "' order by Rply_id desc", con);
                da.Fill(DT);
                if (DT.Rows.Count > 0)
                {
                    GridView1.DataSource = DT;
                    GridView1.DataBind();
                }

            }
        }
    }
}