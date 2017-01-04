using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Diagnostics;

namespace ProbaIT
{
    public partial class Cart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Debug.WriteLine(Session["cart" + Session["id"]]);
                if (Session["cart" + Session["id"]] != null)
                {
                    divCart.Style.Add("display", "none");
                    divGrid.Style.Add("display", "block");
                    updateGrid();
                }
                else
                {
                    divCart.Style.Add("display", "block");
                    divGrid.Style.Add("display", "none");
                }
            }
        }

        private void updateGrid()
        {
            ViewState["dataTable"] = null;
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query;
            StringBuilder description;
            foreach (Product p in (HashSet<Product>)Session["cart" + Session["id"]])
            {
                if (ViewState["dataTable"] != null)
                {
                    dt = (DataTable)ViewState["dataTable"];
                }
                else
                {
                    dt.Columns.AddRange(new DataColumn[5] { new DataColumn("Type"), new DataColumn("Name"), new DataColumn("Description"), new DataColumn("Price"), new DataColumn("Quantity") });
                }

                if (p.ProductType.Equals("Processor"))
                {
                    query = "SELECT Name," + "Cores, Threads, Clock, Cache, Price FROM Processors WHERE Name='" + p.ModelName + "'";

                }
                else if (p.ProductType.Equals("MotherBoard"))
                {
                    query = "SELECT Name, Description, Price FROM Motherboards WHERE Name='" + p.ModelName + "'";
                }
                else if (p.ProductType.Equals("PowerUnit"))
                {
                    query = "SELECT Name, Description, Price FROM PowerUnits WHERE Name='" + p.ModelName + "'";
                }
                else if (p.ProductType.Equals("GraphicsCard"))
                {
                    query = "SELECT Name, Description, Price FROM GrapicsCards WHERE Name='" + p.ModelName + "'";
                }
                else if (p.ProductType.Equals("RAM"))
                {
                    query = "SELECT Name, Description, Price FROM RAMS WHERE Name='" + p.ModelName + "'";
                }
                else
                {
                    query = "SELECT Name, Description, Price FROM HDDS WHERE Name='" + p.ModelName + "'";
                }

                SqlCommand command = new SqlCommand(query, connection);
                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        if (p.ProductType.Equals("Processor"))
                        {
                            description = new StringBuilder();
                            description.Append(string.Format("Cores: {0}; Threads: {1}; Clock: {2}; Cache: {3};", reader["Cores"].ToString(), reader["Threads"].ToString(), reader["Clock"].ToString(), reader["Cache"].ToString()));
                            dt.Rows.Add(p.ProductType, reader["Name"].ToString(), description.ToString(), reader["Price"], p.Quantity.ToString());
                        }
                        else
                        {
                            dt.Rows.Add(p.ProductType, reader["Name"].ToString(), reader["Description"].ToString(), reader["Price"], p.Quantity.ToString());
                        }
                        int price = int.Parse(tbPrice.Text);
                        tbPrice.Text = (price + (int.Parse(reader["Price"].ToString()) * p.Quantity)).ToString();
                        gvCart.DataSource = dt;
                        gvCart.DataBind();
                        ViewState["dataTable"] = dt;
                    }
                }
                catch (Exception err)
                {
                    Debug.Write(err.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        protected void gvCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataTable dt = (DataTable)ViewState["dataTable"];
            gvCart.EditIndex = e.NewEditIndex;
            gvCart.DataSource = dt;
            gvCart.DataBind();
        }

        protected void gvCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataTable dt = (DataTable)ViewState["dataTable"];
            gvCart.EditIndex = -1;
            gvCart.DataSource = dt;
            gvCart.DataBind();
        }

        protected void gvCart_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvCart.PageIndex = e.NewPageIndex;
            gvCart.EditIndex = -1;
            DataTable set = (DataTable)ViewState["dataTable"];
            gvCart.DataSource = set;
            gvCart.DataBind();
        }

        //protected void gvCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    TextBox tb = (TextBox)gvCart.Rows[e.RowIndex].Cells[5].Controls[0];
        //    Product p = new Product(gvCart.Rows[e.RowIndex].Cells[1].Text, gvCart.Rows[e.RowIndex].Cells[2].Text, int.Parse(tb.Text));
        //    HashSet<Product> set = (HashSet<Product>)Session["cart" + Session["id"]];
        //    set.Remove(p);
        //    set.Add(p);
        //    Session["cart" + Session["id"]] = set;
        //    gvCart.EditIndex = -1;
        //    tbPrice.Text = "0";
        //    updateGrid();
        //}

        protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Product p = new Product(gvCart.Rows[e.RowIndex].Cells[0].Text, gvCart.Rows[e.RowIndex].Cells[1].Text, int.Parse(gvCart.Rows[e.RowIndex].Cells[4].Text));
            HashSet<Product> set = (HashSet<Product>)Session["cart" + Session["id"]];
            set.Remove(p);
            Session["cart" + Session["id"]] = set;
            tbPrice.Text = "0";
            if (set.Count == 0)
            {
                divGrid.Style.Add("display", "none");
                divCart.Style.Add("display", "block");
            }
            else
                updateGrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //INSERT
            //Debug.WriteLine(Session["cart" + Session["id"]].ToString());
            StringBuilder allComponents = new StringBuilder();
            for (int i = 0; i < gvCart.Rows.Count; i++)
            {
                Debug.WriteLine(gvCart.Rows[i].Cells[1].Text);
                allComponents.Append(gvCart.Rows[i].Cells[1].Text);
                if(i < gvCart.Rows.Count - 1)
                {
                    allComponents.Append(", ");
                }

            }
            string insertSQL = "INSERT INTO Orders (userid, orderContent) VALUES (@userid, @orderContent)";
            string connectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand insertCMD = new SqlCommand(insertSQL, con);
            insertCMD.Parameters.AddWithValue("@userid", Convert.ToInt32(Session["id"]));
            insertCMD.Parameters.AddWithValue("@orderContent", allComponents.ToString());
            try
            {
                con.Open();
                insertCMD.ExecuteNonQuery();
            }
            catch (Exception err)
            {

            }
            finally
            {
                con.Close();
                Response.Redirect("Orders.aspx");
            }
        }
    }
}