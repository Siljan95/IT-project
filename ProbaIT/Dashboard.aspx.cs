using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProbaIT
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fill dropdown lists
                if (Session["id"] == null && Session["username"] == null)
                    Response.Redirect("SignIn.aspx");
                fillProcessors();
                fillMotherboards();
                fillGraphicsCards();
                fillHardDrives();
                fillRAM();
                fillPowerUnits();
                // Trigger events to set default values in the modal dialogs
                ddlProcessors.SelectedIndex = 1;
                ddlProcessors_SelectedIndexChanged(null, null);
                ddlMotherboards.SelectedIndex = 1;
                ddlMotherboards_SelectedIndexChanged(null, null);                   
                ddlGraphicsCards.SelectedIndex = 1;
                ddlGraphicsCards_SelectedIndexChanged(null, null);
                ddlHardDrives.SelectedIndex = 1;
                ddlHardDrives_SelectedIndexChanged(null, null);
                ddlRAM.SelectedIndex = 1;
                ddlRAM_SelectedIndexChanged(null, null);
                ddlPowerUnits.SelectedIndex = 1;
                ddlPowerUnits_SelectedIndexChanged(null, null);
            }
        }

        protected void fillProcessors()
        {
            ddlProcessors.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.Processors";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "Processors");
                ddlProcessors.DataValueField = "Id";
                ddlProcessors.DataTextField = "Name";
                ddlProcessors.DataSource = ds.Tables["Processors"];
    
                ddlProcessors.DataBind();
            }
            catch(Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

        }

        protected void ddlProcessors_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlProcessor.Visible = true;
            selectProcessor(ddlProcessors.SelectedValue);
        }

        public void selectProcessor(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM Processors WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if(reader.Read())
                {
                    processorNameResult.Text = reader["Name"].ToString();
                    coresResult.Text = reader["Cores"].ToString();
                    threadsResult.Text = reader["Threads"].ToString();
                    clockResult.Text = reader["Clock"].ToString();
                    cacheResult.Text = reader["Cache"].ToString();
                    double stars = Convert.ToDouble(reader["Score"].ToString()) / 10.0;
                    int numStars = Convert.ToInt32(stars);
                    addStar(numStars);
                    if (Convert.ToInt32(reader["Stock"]) > 1)
                    {
                        processorStockResult.Text = "Yes";
                    }
                    else
                    {
                        processorStockResult.Text = "No";
                    }
                    processorPriceResult.Text = reader["Price"].ToString() + " MKD";
                  
                }
                if (processorNameResult.Text.Contains("Intel"))
                {
                    ImageProcessor.ImageUrl = "Styles/img/i7processor.jpg";
                    ImageLogoProcessor.ImageUrl = "Styles/img/intel-logo.png";
                }
                else
                {
                    ImageProcessor.ImageUrl = "Styles/img/amd-processor.jpeg";
                    ImageLogoProcessor.ImageUrl = "Styles/img/amd-logo.png";
                }
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
        
        protected void addStar(int count)
        {
            Image star;
            for (int i = 0; i < count; i++)
            {
                star = new Image();
                star.ImageUrl = "Styles/img/star.png";
                star.Width = Unit.Pixel(15);
                star.Height = Unit.Pixel(15);
                pnlStars.Controls.Add(star);
            }
            for (int i = count; i < 10; i++)
            {
                star = new Image();
                star.ImageUrl = "Styles/img/empty-star.png";
                star.Width = Unit.Pixel(15);
                star.Height = Unit.Pixel(15);
                pnlStars.Controls.Add(star);
            }
        }

        protected void fillMotherboards()
        {
            ddlMotherboards.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.Motherboards";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "Motherboards");
                ddlMotherboards.DataValueField = "Id";
                ddlMotherboards.DataTextField = "Name";
                ddlMotherboards.DataSource = ds.Tables["Motherboards"];

                ddlMotherboards.DataBind();
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

        protected void ddlMotherboards_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlProcessor.Visible = true;
            selectMotherboard(ddlMotherboards.SelectedValue);

        }

        public void selectMotherboard(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM Motherboards WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    motherboardNameResult.Text = reader["Name"].ToString();
                    descResult.Text = reader["Description"].ToString();
                    stockMotherboardsResult.Text = reader["Stock"].ToString();
                    motherboardsPriceResult.Text = reader["Price"].ToString() + " MKD";
                }
                ImageMotherboard.ImageUrl = "Styles/img/gigabyte.jpg";
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

        protected void fillPowerUnits()
        {
            ddlPowerUnits.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.PowerUnits";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "PowerUnits");
                ddlPowerUnits.DataValueField = "Id";
                ddlPowerUnits.DataTextField = "Name";
                ddlPowerUnits.DataSource = ds.Tables["PowerUnits"];

                ddlPowerUnits.DataBind();
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

        public void selectPowerUnit(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM dbo.PowerUnits WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    powerUnitNameResult.Text = reader["Name"].ToString();
                    powerUnitsDescResult.Text = reader["Description"].ToString();
                    powerUnitsStockResult.Text = reader["Stock"].ToString();
                    powerUnitsPriceResult.Text = reader["Price"].ToString() + " MKD";
                }
                if(powerUnitNameResult.Text.Contains("CoolerMaster"))
                {
                    ImagePowerUnit.ImageUrl = "Styles/img/coolermaster.jpg";
                }
                else
                {
                    ImagePowerUnit.ImageUrl = "Styles/img/gembird.jpg";
                }
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

        protected void ddlPowerUnits_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectPowerUnit(ddlPowerUnits.SelectedValue);
        }

        protected void fillGraphicsCards()
        {
            ddlGraphicsCards.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.GraphicsCards";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "GraphicsCards");
                ddlGraphicsCards.DataValueField = "Id";
                ddlGraphicsCards.DataTextField = "Name";
                ddlGraphicsCards.DataSource = ds.Tables["GraphicsCards"];

                ddlGraphicsCards.DataBind();
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

        public void selectGraphicsCard(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM dbo.GraphicsCards WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    graphicsCardNameResult.Text = reader["Name"].ToString();
                    graphicsCardDescResult.Text = reader["Description"].ToString();
                    graphicsCardStockResult.Text = reader["Stock"].ToString();
                    graphicsCardPriceResult.Text = reader["Price"].ToString() + " MKD";
                }
                if(graphicsCardNameResult.Text.Contains("GeForce"))
                {
                    ImageGraphicsCard.ImageUrl = "Styles/img/gigabyte-geforce.jpg";
                }
                else
                {
                    ImageGraphicsCard.ImageUrl = "Styles/img/sapphire.jpg";
                }
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

        protected void ddlGraphicsCards_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectGraphicsCard(ddlGraphicsCards.SelectedValue);
        }

        protected void fillRAM()
        {
            ddlRAM.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.RAMS";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "RAM");
                ddlRAM.DataValueField = "Id";
                ddlRAM.DataTextField = "Name";
                ddlRAM.DataSource = ds.Tables["RAM"];

                ddlRAM.DataBind();
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

        public void selectRAM(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM dbo.RAMS WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    lblRAMNameResult.Text = reader["Name"].ToString();
                    RAMDescResult.Text = reader["Description"].ToString();
                    RAMStockResult.Text = reader["Stock"].ToString();
                    RAMPriceResult.Text = reader["Price"].ToString() + " MKD";
                }
                if(lblRAMNameResult.Text.Contains("Geil"))
                {
                    ImageRAM.ImageUrl = "Styles/img/geil.jpg";
                }
                else
                {
                    ImageRAM.ImageUrl = "Styles/img/hyper-fury.jpeg";
                }
                
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

        protected void ddlRAM_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectRAM(ddlRAM.SelectedValue);
        }


        protected void fillHardDrives()
        {
            ddlHardDrives.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.HDDS";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "HDD");
                ddlHardDrives.DataValueField = "Id";
                ddlHardDrives.DataTextField = "Name";
                ddlHardDrives.DataSource = ds.Tables["HDD"];

                ddlHardDrives.DataBind();
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

        public void selectHardDrive(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM dbo.HDDS WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    hardDriveNameResult.Text = reader["Name"].ToString();
                    hardDriveDescResult.Text = reader["Description"].ToString();
                    hardDriveStockResult.Text = reader["Stock"].ToString();
                    hardDrivePriceResult.Text = reader["Price"].ToString() + " MKD";
                }
                if(hardDriveNameResult.Text.Contains("Hitachi"))
                {
                    ImageHardDrive.ImageUrl = "Styles/img/hitachi.jpg";
                }
                else if(hardDriveNameResult.Text.Contains("Samsung"))
                {
                    ImageHardDrive.ImageUrl = "Styles/img/samsung-ssd.jpg";
                }
                else if (hardDriveNameResult.Text.Contains("Seagate"))
                {
                    ImageHardDrive.ImageUrl = "Styles/img/seagate.jpg";
                }
                else if (hardDriveNameResult.Text.Contains("Toshiba"))
                {
                    ImageHardDrive.ImageUrl = "Styles/img/toshiba-hdd.png";
                } 
                else if (hardDriveNameResult.Text.Contains("Platinet"))
                {
                    ImageHardDrive.ImageUrl = "Styles/img/platinet.jpg";
                } 
                else if (hardDriveNameResult.Text.Contains("Kingston"))
                {
                    ImageHardDrive.ImageUrl = "Styles/img/kingston-ssd.jpg";
                }
                else if (hardDriveNameResult.Text.Contains("Western Digital"))
                {
                    ImageHardDrive.ImageUrl = "Styles/img/westerndigital.jpg";
                }
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

        protected void ddlHardDrives_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectHardDrive(ddlHardDrives.SelectedValue);
        }

        protected void AddToCart(object sender, EventArgs e)
        {
            string[] type = new string[] { "Processor", "MotherBoard", "PowerUnit", "GraphicsCard", "RAM", "HardDrive" };
            string[] parts = new string[] { processorNameResult.Text, motherboardNameResult.Text, powerUnitNameResult.Text, graphicsCardNameResult.Text, lblRAMNameResult.Text, hardDriveNameResult.Text };
            string[] textQuantity = new string[] { textQuantity1.Text, textQuantity2.Text, textQuantity3.Text, textQuantity4.Text, textQuantity5.Text, textQuantity6.Text };
            Button button = (Button)sender;
            int id = int.Parse(ExtractNumber(button.ID));
            HashSet<Product> products;
            if (Session["cart" + Session["id"]] != null)
            {
                products = (HashSet<Product>)Session["cart" + Session["id"]];
            }
            else
            {
                products = new HashSet<Product>();
            }
            Product product = new Product(type[id - 1], parts[id - 1], int.Parse(textQuantity[id - 1]));
            products.Remove(product);
            products.Add(product);
            Session["cart" + Session["id"]] = products;
        }

        public string ExtractNumber(string original)
        {
            return new string(original.Where(c => char.IsDigit(c)).ToArray());
        }

       
    }
}