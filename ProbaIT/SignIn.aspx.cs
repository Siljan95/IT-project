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
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectSQL = "SELECT id, password, type FROM Users WHERE username=@username";
            string connectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            cmd.Parameters.AddWithValue("@username", TxtUsername.Text);
            bool valid = true;
            int id = -1;
            string type = null;
            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if(reader.Read())
                {
                    string password = reader["password"].ToString();
                    //Response.Write(password + " " + );
                    string passTextBox = CalculateMD5Hash(TxtPassword.Text);
                    if (!(password.Equals(passTextBox)))
                    {
                        valid = false;
                    }
                    else
                    {
                        id = Convert.ToInt32(reader["id"].ToString());
                        type = reader["type"].ToString();
                    }
                }
            }
            catch(Exception err)
            {
                //Label1.Text = err.Message;
            }
            finally
            {
                con.Close();
            }

            if (valid && (id != -1) && type=="user")
            {
                Session["id"] = id;
                Session["type"] = type;
                Response.Redirect("Dashboard.aspx");
            }
            else if (valid && (id!=-1) && type == "admin")
            {
                Session["id"] = id;
                Session["type"] = type;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Label1.Text = "Wrong username or password!";
                Label1.Visible = true;
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