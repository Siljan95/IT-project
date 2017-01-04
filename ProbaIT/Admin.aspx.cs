using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProbaIT
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   ///// TREBA DA GO PRENASOCI SEKOJ STO NE E ADMIN
            if (Session["id"] == null || Session["type"] == null || Session["type"].ToString() == "user")
            {
                Response.Redirect("~/AccessDenied.aspx");
            }

            if (!IsPostBack) {
                loadProcessors();
                loadMotherboards();
                loadPowerUnits();
                loadGraphicsCards();
                loadRAMS();
                loadStorage();
                loadAccounts();
            }

          
        }
        public void loadAccounts()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT id, username, password,  type , firstname , lastname , email  FROM dbo.Users";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "Users");
                gvEditAdmin.DataSource = ds.Tables["Users"];
                gvDeleteAcc.DataSource = ds.Tables["Users"];
                gvEditAdmin.DataBind();
                gvDeleteAcc.DataBind();

                ViewState["Users"] = ds;
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

        }

        public void loadStorage()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name,  Price , Stock , Description FROM dbo.HDDS";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "HDDS");

                gvStorage.DataSource = ds.Tables["HDDS"];

                gvStorage.DataBind();

                ViewState["HDDS"] = ds;
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

        }

        public void loadRAMS()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name,  Price , Stock , Description FROM dbo.RAMS";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "RAMS");

                gvRam.DataSource = ds.Tables["RAMS"];

                gvRam.DataBind();

                ViewState["RAMS"] = ds;
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

        }

        public void loadGraphicsCards()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name,  Price , Stock , Description FROM dbo.GraphicsCards";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "GraphicsCards");

                gvGraphics.DataSource = ds.Tables["GraphicsCards"];

                gvGraphics.DataBind();

                ViewState["GraphicsCards"] = ds;
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

        }

        public void loadPowerUnits()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name,  Price , Stock , Description FROM dbo.PowerUnits";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "PowerUnits");

                gvPowerUnit.DataSource = ds.Tables["PowerUnits"];

                gvPowerUnit.DataBind();

                ViewState["PowerUnits"] = ds;
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

        }
        public void loadMotherboards()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name,  Price , Stock , Description FROM dbo.Motherboards";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "Motherboards");

                gvMotherboards.DataSource = ds.Tables["Motherboards"];

                gvMotherboards.DataBind();

                ViewState["Motherboards"] = ds;
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

        }

        public void loadProcessors()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name, Cores , Threads , Clock , Cache , Score , Stock, Price FROM dbo.Processors";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "Processors");

                gvProcessors.DataSource = ds.Tables["Processors"];

                gvProcessors.DataBind();

                ViewState["Processors"] = ds;
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

        }

        protected void gvProcessors_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["Processors"];
            gvProcessors.EditIndex = e.NewEditIndex;
            gvProcessors.DataSource = ds;
            gvProcessors.DataBind();
            UpdatePanel1.Update();
        }

        protected void gvProcessors_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["Processors"];
            gvProcessors.EditIndex = -1;
            gvProcessors.DataSource = ds;
            gvProcessors.DataBind();
            UpdatePanel1.Update();
        }

        protected void gvProcessors_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "UPDATE Processors SET   Name = @name, Cores = @cores , Threads = @threads , Clock = @clock , Cache = @cache , Score = @score, Stock = @stock, Price = @price WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);

            TextBox tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@name", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@cores", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[3].Controls[0];
            command.Parameters.AddWithValue("@threads", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[4].Controls[0];
            command.Parameters.AddWithValue("@clock", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[5].Controls[0];
            command.Parameters.AddWithValue("@cache", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[6].Controls[0];
            command.Parameters.AddWithValue("@score", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[7].Controls[0];
            command.Parameters.AddWithValue("@stock", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[8].Controls[0];
            command.Parameters.AddWithValue("@price", tb.Text);

            command.Parameters.AddWithValue("@id", gvProcessors.Rows[e.RowIndex].Cells[0].Text);

            int done = 0;
        
            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();

               
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
                gvProcessors.EditIndex = -1;

            }
            if (done != 0)
                loadProcessors();
            UpdatePanel1.Update();

        }

        protected void gvProcessors_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
            gvProcessors.PageIndex = e.NewPageIndex;
            gvProcessors.SelectedIndex = -1;
            DataSet ds = (DataSet)ViewState["Processors"];
            gvProcessors.DataSource = ds;
            gvProcessors.DataBind();
            UpdatePanel1.Update();

        }
        protected void addNewProcessor()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "INSERT INTO Processors ( Name , Cores , Threads , Clock , Cache , Score , Stock , Price ) VALUES ( @name , @cores , @threads , @clock , @cache , @score , @stock , @price )";
            SqlCommand command = new SqlCommand(query, connection);

           
            command.Parameters.AddWithValue("@name", tbNameProc.Text);
            command.Parameters.AddWithValue("@cores",tbCoresProc.Text);
            command.Parameters.AddWithValue("@threads", tbThreadsProc.Text);
            command.Parameters.AddWithValue("@clock",  tbClockProc.Text);
            command.Parameters.AddWithValue("@cache", tbCacheProc.Text);
            command.Parameters.AddWithValue("@score", tbScoreProc.Text);
            command.Parameters.AddWithValue("@stock",tbStockProc.Text);
            command.Parameters.AddWithValue("@price",tbPriceProc.Text);

            int done = 0;

            try
            {
                

                connection.Open();
                done = command.ExecuteNonQuery();


            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine( err.Message);
            }
            finally
            {
                connection.Close();
               

            }
            
                loadProcessors();
            UpdatePanel1.Update();


        }
        public void cleanFieldsProc()
        {
            tbNameProc.Text = "";
            tbCoresProc.Text = "";
            tbThreadsProc.Text = "";
            tbClockProc.Text = "";
            tbCacheProc.Text = "";
            tbScoreProc.Text = "";
            tbStockProc.Text = "";
            tbPriceProc.Text = "";
            UpdatePanel1.Update();

        }
        public void cleanFieldsMb()
        {
            tbMbName.Text = "";
            tbMbPrice.Text = "";
            tbMbStock.Text = "";
            tbMbDescription.Text = "";
            updatePanelMotherboards.Update();

        }
        public void cleanFieldsGc()
        {
            tbGcName.Text = "";
            tbGcPrice.Text = "";
            tbGcStock.Text = "";
            tbGcDescription.Text = "";
            updatePanelGraphics.Update();

        }
        public void cleanFieldsPu()
        {
            tbPuName.Text = "";
            tbPuPrice.Text = "";
            tbPuStock.Text = "";
            tbPuDescription.Text = "";
            updatePanelPower.Update();

        }
        public void cleanFieldsRam()
        {
            tbRmName.Text = "";
            tbRmPrice.Text = "";
            tbRmStock.Text = "";
            tbRmDescription.Text = "";
            updatePanelRam.Update();

        }
        public void cleanFieldsSt()
        {
            tbStName.Text = "";
            tbStPrice.Text = "";
            tbStStock.Text = "";
            tbStDescription.Text = "";
            updatePanelStorage.Update();

        }
        public void cleanFieldsAd()
        {
            tbAdUsername.Text = "";
            tbAdPassword.Text = "";
            tbAdFN.Text = "";
            tbAdLN.Text = "";
            tbAdemail.Text = "";
            
            updatePanelNewAdmin.Update();

        }

        protected void btnAddProc_Click(object sender, EventArgs e)
        {
            addNewProcessor();
            cleanFieldsProc();
        }

        protected void btnCancelProc_Click(object sender, EventArgs e)
        {
            cleanFieldsProc();
        }

        protected void gvProcessors_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "DELETE FROM dbo.Processors WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);
            String tb = gvProcessors.Rows[e.RowIndex].Cells[0].Text;
            int id = int.Parse(tb);
            command.Parameters.AddWithValue("@id", id);
          
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();
            }
            loadProcessors();
            UpdatePanel1.Update();
        }

        protected void btMbAdd_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "INSERT INTO Motherboards ( Name , Price , Stock , Description) VALUES ( @name ,  @price , @stock , @description )";
            SqlCommand command = new SqlCommand(query, connection);


            command.Parameters.AddWithValue("@name", tbMbName.Text);
            command.Parameters.AddWithValue("@price", tbMbPrice.Text);
            command.Parameters.AddWithValue("@stock", tbMbStock.Text);
            command.Parameters.AddWithValue("@description", tbMbDescription.Text);
           
            int done = 0;

            try
            {


                connection.Open();
                done = command.ExecuteNonQuery();


            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();


            }

            loadMotherboards();
            updatePanelMotherboards.Update();
            cleanFieldsMb();

        }

        protected void btnMbCancel_Click(object sender, EventArgs e)
        {
            cleanFieldsMb();
        }

        protected void gvMotherboards_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "UPDATE Motherboards SET   Name = @name, Price = @price , Stock = @stock , Description = @description WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);

            TextBox tb = (TextBox)gvMotherboards.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@name", tb.Text);
            tb = (TextBox)gvMotherboards.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@price", tb.Text);
            tb = (TextBox)gvMotherboards.Rows[e.RowIndex].Cells[3].Controls[0];
            command.Parameters.AddWithValue("@stock", tb.Text);
            tb = (TextBox)gvMotherboards.Rows[e.RowIndex].Cells[4].Controls[0];
            command.Parameters.AddWithValue("@description", tb.Text);
            command.Parameters.AddWithValue("@id", gvMotherboards.Rows[e.RowIndex].Cells[0].Text);

            int done = 0;
            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();
               
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
                gvMotherboards.EditIndex = -1;
            }
            if (done != 0)
                loadMotherboards();
            updatePanelMotherboards.Update();
        }

        protected void gvMotherboards_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "DELETE FROM dbo.Motherboards WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);
            String tb = gvProcessors.Rows[e.RowIndex].Cells[0].Text;
            int id = int.Parse(tb);
            command.Parameters.AddWithValue("@id", id);

            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();
            }
            loadMotherboards();
            updatePanelMotherboards.Update();
        }

        protected void gvMotherboards_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["Motherboards"];
            gvMotherboards.EditIndex = e.NewEditIndex;
            gvMotherboards.DataSource = ds;
            gvMotherboards.DataBind();
            updatePanelMotherboards.Update();
        }

        protected void gvMotherboards_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["Motherboards"];
            gvMotherboards.EditIndex = -1;
            gvMotherboards.DataSource = ds;
            gvMotherboards.DataBind();
            updatePanelMotherboards.Update();
        }

        protected void gvMotherboards_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvMotherboards.PageIndex = e.NewPageIndex;
            gvMotherboards.SelectedIndex = -1;
            DataSet ds = (DataSet)ViewState["Motherboards"];
            gvMotherboards.DataSource = ds;
            gvMotherboards.DataBind();
            updatePanelMotherboards.Update();
        }

        protected void gvPowerUnit_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["PowerUnits"];
            gvPowerUnit.EditIndex = -1;
            gvPowerUnit.DataSource = ds;
            gvPowerUnit.DataBind();
            updatePanelPower.Update();
        }
        
        protected void gvPowerUnit_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "DELETE FROM dbo.PowerUnits WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);
            String tb = gvPowerUnit.Rows[e.RowIndex].Cells[0].Text;
            int id = int.Parse(tb);
            command.Parameters.AddWithValue("@id", id);

            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();
            }
            loadPowerUnits();
            updatePanelPower.Update();
        }

        protected void gvPowerUnit_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["PowerUnits"];
            gvPowerUnit.EditIndex = e.NewEditIndex;
            gvPowerUnit.DataSource = ds;
            gvPowerUnit.DataBind();
            updatePanelPower.Update();
        }

        protected void gvPowerUnit_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "UPDATE PowerUnits SET   Name = @name, Price = @price , Stock = @stock , Description = @description WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);

            TextBox tb = (TextBox)gvPowerUnit.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@name", tb.Text);
            tb = (TextBox)gvPowerUnit.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@price", tb.Text);
            tb = (TextBox)gvPowerUnit.Rows[e.RowIndex].Cells[3].Controls[0];
            command.Parameters.AddWithValue("@stock", tb.Text);
            tb = (TextBox)gvPowerUnit.Rows[e.RowIndex].Cells[4].Controls[0];
            command.Parameters.AddWithValue("@description", tb.Text);
            command.Parameters.AddWithValue("@id", gvPowerUnit.Rows[e.RowIndex].Cells[0].Text);

            int done = 0;

            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
                gvPowerUnit.EditIndex = -1;
            }
            if (done != 0)
                loadPowerUnits();
            updatePanelPower.Update();
        }
        protected void gvPowerUnit_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPowerUnit.PageIndex = e.NewPageIndex;
            gvPowerUnit.SelectedIndex = -1;
            DataSet ds = (DataSet)ViewState["PowerUnits"];
            gvPowerUnit.DataSource = ds;
            gvPowerUnit.DataBind();
            updatePanelPower.Update();
        }

        protected void btnPuAdd_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "INSERT INTO PowerUnits ( Name , Price , Stock , Description) VALUES ( @name ,  @price , @stock , @description )";
            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@name", tbPuName.Text);
            command.Parameters.AddWithValue("@price", tbPuPrice.Text);
            command.Parameters.AddWithValue("@stock", tbPuStock.Text);
            command.Parameters.AddWithValue("@description", tbPuDescription.Text);

            int done = 0;
            try
            {    
                connection.Open();
                done = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();

            }
            loadPowerUnits();
            updatePanelPower.Update();
            cleanFieldsPu();
        }

        protected void gvGraphics_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "DELETE FROM dbo.GraphicsCards WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);
            String tb = gvGraphics.Rows[e.RowIndex].Cells[0].Text;
            int id = int.Parse(tb);
            command.Parameters.AddWithValue("@id", id);

            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();
            }
            loadGraphicsCards();
            updatePanelGraphics.Update();
        }

        protected void gvGraphics_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["GraphicsCards"];
            gvGraphics.EditIndex = e.NewEditIndex;
            gvGraphics.DataSource = ds;
            gvGraphics.DataBind();
            updatePanelGraphics.Update();
        }

        protected void gvGraphics_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "UPDATE GraphicsCards SET   Name = @name, Price = @price , Stock = @stock , Description = @description WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);

            TextBox tb = (TextBox)gvGraphics.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@name", tb.Text);
            tb = (TextBox)gvGraphics.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@price", tb.Text);
            tb = (TextBox)gvGraphics.Rows[e.RowIndex].Cells[3].Controls[0];
            command.Parameters.AddWithValue("@stock", tb.Text);
            tb = (TextBox)gvGraphics.Rows[e.RowIndex].Cells[4].Controls[0];
            command.Parameters.AddWithValue("@description", tb.Text);
            command.Parameters.AddWithValue("@id", gvGraphics.Rows[e.RowIndex].Cells[0].Text);

            int done = 0;

            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
                gvGraphics.EditIndex = -1;
            }
            if (done != 0)
                loadGraphicsCards();
            updatePanelGraphics.Update();
        }

        protected void gvGraphics_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["GraphicsCards"];
            gvGraphics.EditIndex = -1;
            gvGraphics.DataSource = ds;
            gvGraphics.DataBind();
            updatePanelGraphics.Update();
        }

        protected void btnGcAdd_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "INSERT INTO GraphicsCards ( Name , Price , Stock , Description) VALUES ( @name ,  @price , @stock , @description )";
            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@name", tbGcName.Text);
            command.Parameters.AddWithValue("@price", tbGcPrice.Text);
            command.Parameters.AddWithValue("@stock", tbGcStock.Text);
            command.Parameters.AddWithValue("@description", tbGcDescription.Text);

            int done = 0;
            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();

            }
            loadGraphicsCards();
            updatePanelGraphics.Update();
            cleanFieldsGc();
        }

        protected void gvGraphics_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvGraphics.PageIndex = e.NewPageIndex;
            gvGraphics.SelectedIndex = -1;
            DataSet ds = (DataSet)ViewState["GraphicsCards"];
            gvGraphics.DataSource = ds;
            gvGraphics.DataBind();
            updatePanelGraphics.Update();
        }

        protected void gvRam_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "UPDATE RAMS SET   Name = @name, Price = @price , Stock = @stock , Description = @description WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);

            TextBox tb = (TextBox)gvRam.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@name", tb.Text);
            tb = (TextBox)gvRam.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@price", tb.Text);
            tb = (TextBox)gvRam.Rows[e.RowIndex].Cells[3].Controls[0];
            command.Parameters.AddWithValue("@stock", tb.Text);
            tb = (TextBox)gvRam.Rows[e.RowIndex].Cells[4].Controls[0];
            command.Parameters.AddWithValue("@description", tb.Text);
            command.Parameters.AddWithValue("@id", gvRam.Rows[e.RowIndex].Cells[0].Text);

            int done = 0;

            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
                gvRam.EditIndex = -1;
            }
            if (done != 0)
                loadRAMS();
            updatePanelRam.Update();
        }

        protected void gvRam_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["RAMS"];
            gvRam.EditIndex = e.NewEditIndex;
            gvRam.DataSource = ds;
            gvRam.DataBind();
            updatePanelRam.Update();
        }

        protected void gvRam_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "DELETE FROM dbo.RAMS WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);
            String tb = gvRam.Rows[e.RowIndex].Cells[0].Text;
            int id = int.Parse(tb);
            command.Parameters.AddWithValue("@id", id);

            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();
            }
            loadRAMS();
            updatePanelRam.Update();
        }

        protected void gvRam_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvRam.PageIndex = e.NewPageIndex;
            gvRam.SelectedIndex = -1;
            DataSet ds = (DataSet)ViewState["RAMS"];
            gvRam.DataSource = ds;
            gvRam.DataBind();
            updatePanelRam.Update();
        }

        protected void gvRam_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["RAMS"];
            gvRam.EditIndex = -1;
            gvRam.DataSource = ds;
            gvRam.DataBind();
            updatePanelRam.Update();
        }

        protected void btnRmAdd_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "INSERT INTO RAMS ( Name , Price , Stock , Description) VALUES ( @name ,  @price , @stock , @description )";
            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@name", tbRmName.Text);
            command.Parameters.AddWithValue("@price", tbRmPrice.Text);
            command.Parameters.AddWithValue("@stock", tbRmStock.Text);
            command.Parameters.AddWithValue("@description", tbRmDescription.Text);

            int done = 0;
            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();

            }
            loadRAMS();
            updatePanelRam.Update();
            cleanFieldsRam();
        }

        protected void btnRmCancel_Click(object sender, EventArgs e)
        {
            cleanFieldsRam();
        }

        protected void gvStorage_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "UPDATE HDDS SET   Name = @name, Price = @price , Stock = @stock , Description = @description WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);

            TextBox tb = (TextBox)gvStorage.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@name", tb.Text);
            tb = (TextBox)gvStorage.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@price", tb.Text);
            tb = (TextBox)gvStorage.Rows[e.RowIndex].Cells[3].Controls[0];
            command.Parameters.AddWithValue("@stock", tb.Text);
            tb = (TextBox)gvStorage.Rows[e.RowIndex].Cells[4].Controls[0];
            command.Parameters.AddWithValue("@description", tb.Text);
            command.Parameters.AddWithValue("@id", gvStorage.Rows[e.RowIndex].Cells[0].Text);

            int done = 0;

            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
                gvStorage.EditIndex = -1;
            }
            if (done != 0)
                loadStorage();
            updatePanelStorage.Update();
        }

        protected void gvStorage_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["HDDS"];
            gvStorage.EditIndex = e.NewEditIndex;
            gvStorage.DataSource = ds;
            gvStorage.DataBind();
            updatePanelStorage.Update();
        }

        protected void gvStorage_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "DELETE FROM dbo.HDDS WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);
            String tb = gvStorage.Rows[e.RowIndex].Cells[0].Text;
            int id = int.Parse(tb);
            command.Parameters.AddWithValue("@id", id);

            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();
            }
            loadStorage();
            updatePanelStorage.Update();
        }

        protected void gvStorage_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvStorage.PageIndex = e.NewPageIndex;
            gvStorage.SelectedIndex = -1;
            DataSet ds = (DataSet)ViewState["HDDS"];
            gvStorage.DataSource = ds;
            gvStorage.DataBind();
            updatePanelStorage.Update();
        }

        protected void gvStorage_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["HDDS"];
            gvStorage.EditIndex = -1;
            gvStorage.DataSource = ds;
            gvStorage.DataBind();
            updatePanelStorage.Update();
        }

        protected void btnStAdd_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "INSERT INTO HDDS ( Name , Price , Stock , Description) VALUES ( @name ,  @price , @stock , @description )";
            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@name", tbStName.Text);
            command.Parameters.AddWithValue("@price", tbStPrice.Text);
            command.Parameters.AddWithValue("@stock", tbStStock.Text);
            command.Parameters.AddWithValue("@description", tbStDescription.Text);

            int done = 0;
            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();

            }
            loadStorage();
            updatePanelStorage.Update();
            cleanFieldsSt();
        }

        protected void btnStCancel_Click(object sender, EventArgs e)
        {
            cleanFieldsSt();
        }

        protected void btnPuCancel_Click(object sender, EventArgs e)
        {
            cleanFieldsPu();
        }

        protected void btnGcCancel_Click(object sender, EventArgs e)
        {
            cleanFieldsGc();
        }

        protected void btnAdAdd_Click(object sender, EventArgs e)
        {
            if (tbAdUsername.Text =="" || tbAdPassword.Text =="" || tbAdFN.Text=="" || tbAdLN.Text=="" || tbAdemail.Text=="")
            {
                lbAdStatus.Text = "There is empty field ";
            }
            else { 
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "INSERT INTO Users ( username , password , type , firstname, lastname, email) VALUES ( @username ,  @password , @type , @firstname , @lastname , @email )";
            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@username", tbAdUsername.Text);
            command.Parameters.AddWithValue("@password", CalculateMD5Hash(tbAdPassword.Text));
            command.Parameters.AddWithValue("@type", ddlAdType.SelectedValue);
            command.Parameters.AddWithValue("@firstname", tbAdFN.Text);
            command.Parameters.AddWithValue("@lastname", tbAdLN.Text);
            command.Parameters.AddWithValue("@email", tbAdemail.Text);

            int done = 0;
            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                    lbAdStatus.Text = err.Message;
            }
            finally
            {
                connection.Close();

            }
            if (done == 1) {
                
                loadAccounts();
                cleanFieldsAd();
                    lbAdStatus.Text = "Account Created!";
                updatePanelNewAdmin.Update();
                updatePanelDeleteAdmin.Update();
                updatePanelEditAdmin.Update();
            }
            else
            {
                    lbAdStatus.Text = "Account not created!";
                    cleanFieldsAd();
                updatePanelNewAdmin.Update();
            }
        }
        }
        protected void btnAdCancel_Click(object sender, EventArgs e)
        {
            cleanFieldsAd();
        }

        protected void gcDeleteAcc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "DELETE FROM dbo.Users WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);
            String tb = gvDeleteAcc.Rows[e.RowIndex].Cells[0].Text;
            int id = int.Parse(tb);
            command.Parameters.AddWithValue("@id", id);

            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();
            }
            loadAccounts();
            updatePanelNewAdmin.Update();
            updatePanelDeleteAdmin.Update();
            updatePanelEditAdmin.Update();
        }

        protected void gcDeleteAcc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDeleteAcc.PageIndex = e.NewPageIndex;
            gvDeleteAcc.SelectedIndex = -1;
            DataSet ds = (DataSet)ViewState["Users"];
            gvDeleteAcc.DataSource = ds;
            gvDeleteAcc.DataBind();
            updatePanelDeleteAdmin.Update();
        }

        protected void gvEditAdmin_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["Users"];
            gvEditAdmin.EditIndex = e.NewEditIndex;
            gvEditAdmin.DataSource = ds;
            gvEditAdmin.DataBind();    
            updatePanelEditAdmin.Update();
        }

        protected void gvEditAdmin_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "UPDATE Users SET   username = @username, password = @password , type = @type , firstname = @firstname , lastname = @lastname , email = @email WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);

            TextBox tb = (TextBox)gvEditAdmin.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@username", tb.Text);
            tb = (TextBox)gvEditAdmin.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@password", tb.Text);
            tb = (TextBox)gvEditAdmin.Rows[e.RowIndex].Cells[3].Controls[0];
            command.Parameters.AddWithValue("@type", tb.Text);
            tb = (TextBox)gvEditAdmin.Rows[e.RowIndex].Cells[4].Controls[0];
            command.Parameters.AddWithValue("@firstname", tb.Text);
            tb = (TextBox)gvEditAdmin.Rows[e.RowIndex].Cells[5].Controls[0];
            command.Parameters.AddWithValue("@lastname", tb.Text);
            tb = (TextBox)gvEditAdmin.Rows[e.RowIndex].Cells[6].Controls[0];
            command.Parameters.AddWithValue("@email", tb.Text);

            command.Parameters.AddWithValue("@id", gvEditAdmin.Rows[e.RowIndex].Cells[0].Text);

            int done = 0;

            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
                gvEditAdmin.EditIndex = -1;
            }
            if (done != 0)
                loadAccounts();
            updatePanelNewAdmin.Update();
            updatePanelDeleteAdmin.Update();
            updatePanelEditAdmin.Update();
        }

        protected void gvEditAdmin_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEditAdmin.PageIndex = e.NewPageIndex;
            gvEditAdmin.SelectedIndex = -1;
            DataSet ds = (DataSet)ViewState["Users"];
            gvEditAdmin.DataSource = ds;
            gvEditAdmin.DataBind();
            updatePanelEditAdmin.Update();
        }

        protected void gvEditAdmin_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["Users"];
            gvEditAdmin.EditIndex = -1;
            gvEditAdmin.DataSource = ds;
            gvEditAdmin.DataBind();
            updatePanelEditAdmin.Update();
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