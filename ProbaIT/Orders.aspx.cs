using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProbaIT
{
    public partial class Orders : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                if(Session["id"] == null)
                {
                    Response.Redirect("SignIn.aspx");
                    return;
                }
                DataTable dt = this.GetData();
               

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                // If the user does not have any orders, display a message and redirect to Dashboard
                if (dt.Rows.Count == 0)
                {
                    html.Append("<h2 style='text-align: center; margin-top: 20%; color: #26A8D4; text-shadow: 1px 1px 2px;'>You don't have any orders yet! :( </h2>");
                    html.Append("<h2 style='text-align: center;'>Why not head over to the Home page and make a build?</h2>");
                    PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
                    return;

                }

                //Table start.
                html.Append("<table class='table table-bordered table-responsive' style='width:100%'>");

                //Building the Header row.
                html.Append("<tr>");
                
                html.Append("<th style='text-align:center;  font-size: 16px;'>");
                html.Append("Order ID");
                html.Append("</th>");
                html.Append("<th style='text-align:center;  font-size: 16px;'>");
                html.Append("Order Content");
                html.Append("</th>");

                html.Append("</tr>");

                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr style='text-align:center; font-size: 16px;'>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</td>");
                    }
                    html.Append("</tr>");
                }

                //Table end.
                html.Append("</table>");

                //Append the HTML string to Placeholder.
                PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            }
        }

        private DataTable GetData()
        {
            string constr = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT id, orderContent FROM Orders WHERE userid=" + Session["id"].ToString()))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);                           
                            return dt;
                        }
                    }
                }
            }
        }

       protected void GoToDashboardBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}
