using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProbaIT
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                int id = (int)Session["id"];
                signInButton.Style.Add("display", "none");
                signUpDiv.Style.Add("display", "none");
                logoutButton.Visible = true;
                logoutButton.Enabled = true;
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
                string query = "SELECT firstname FROM dbo.Users u WHERE id=" + id;
                SqlCommand command = new SqlCommand(query, connection);
                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    if(reader.Read())
                    {
                        lblUsername.Text = "Welcome, " + reader["firstname"].ToString();
                    }
                    reader.Close();
                        
                }
                catch(Exception err)
                {

                }
                finally
                {
                    connection.Close();
                }
            }
            else if (Session["username"] != null)
            {
                lblUsername.Text = "Welcome, " + (string)Session["username"];
                signInButton.Style.Add("display", "none");
                signUpDiv.Style.Add("display", "none");
                logoutButton.Visible = true;
                logoutButton.Enabled = true;
            }
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Session["username"] = null;
            Session.Clear();
            logoutButton.Visible = false;
            logoutButton.Enabled = false;
            signInButton.Style.Add("display", "block");
            signUpDiv.Style.Add("display", "block");
            lblUsername.Text = "";
            Response.Redirect("Default.aspx");
        }
    }
}