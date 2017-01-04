using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProbaIT
{
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"] == null)
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void btnSubmitChanges_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            if(txtFirstNameEdit.Text != "")
            {
                updateColumn("firstname", txtFirstNameEdit.Text);
            }
            if(txtLastNameEdit.Text != "")
            {
                updateColumn("lastname", txtLastNameEdit.Text);
            }
            if (txtPasswordEdit.Text != "")
            {
                updateColumn("password", CalculateMD5Hash(txtPasswordEdit.Text));
            }
            Response.Redirect("Default.aspx");
        }

        protected void updateColumn(string columnName, string value)
        {
            if(Session["id"] != null)
            {
                int id =(int)Session["id"];
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
                string updateValue = "UPDATE dbo.Users SET " + columnName + "='" + value + "' WHERE id=" + id;
                SqlCommand command = new SqlCommand(updateValue, connection);
                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                }
                catch(Exception err)
                {
                    lblExceptionEdit.Text = err.ToString();
                }
                finally
                {
                    connection.Close();
                }
            }
            

        }

        public string CalculateMD5Hash(string input)
        {

            MD5 md5 = System.Security.Cryptography.MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }
    }

   
}