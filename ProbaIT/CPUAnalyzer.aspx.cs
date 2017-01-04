using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;

namespace ProbaIT
{
    public partial class CPUAnalyzer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                loadProcessorProducts();
            }
            else
            {
                processors.DataSource = ViewState["data"];
                processors.DataBind();
            }


        }

        public void loadProcessorProducts()
        {

            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            String querry = "SELECT id, Name FROM Processors";
            SqlCommand command = new SqlCommand(querry, connection);
            SqlDataAdapter adapter = new SqlDataAdapter();

            adapter.SelectCommand = command;
            DataSet data = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(data, "Processors");
                processors.DataSource = data;
                processors.DataBind();
                processors2.DataSource = data;
                processors2.DataBind();

                ViewState["data"] = data;


            }
            catch (Exception err)
            {
                //  errMsg.Text= err.Message;


            }
            finally
            {
                connection.Close();

            }
        }



        protected void BtnBack_Click(object sender, EventArgs e)
        {

            Response.Redirect("Default.aspx");

        }

        protected void BtnCompare_Click(object sender, EventArgs e)
        {
            CPUPerformance service = new CPUPerformance();
            string first = processors.SelectedRow.Cells[0].Text;
            string second = processors2.SelectedRow.Cells[0].Text;
            if (first != null && second != null)
            {

                DataSet ds = new DataSet();
                ds = service.Compare(first, second);


                Chart1.DataSource = ds;
                Chart1.Series["Score"].XValueMember = "Name";
                Chart1.Series["Score"].YValueMembers = "Score";

                Chart1.DataBind();
                Chart1.Visible = true;

                name1.Text = ds.Tables[0].Rows[0][0].ToString();
                name2.Text = ds.Tables[0].Rows[1][0].ToString();

                cores1.Text = ds.Tables[0].Rows[0][1].ToString();
                cores2.Text = ds.Tables[0].Rows[1][1].ToString();

                if (int.Parse(cores1.Text) < int.Parse(cores2.Text))
                {
                    cores2.ForeColor = Color.Green;
                    cores1.ForeColor = Color.Red;
                }
                else if (int.Parse(cores1.Text) > int.Parse(cores2.Text))
                {
                    cores2.ForeColor = Color.Red;
                    cores1.ForeColor = Color.Green;

                }

                else
                {
                    cores1.ForeColor = Color.Yellow;
                    cores2.ForeColor = Color.Yellow;
                }

                threads1.Text = ds.Tables[0].Rows[0][2].ToString();
                threads2.Text = ds.Tables[0].Rows[1][2].ToString();

                if (int.Parse(threads1.Text) < int.Parse(threads2.Text))
                {
                    threads2.ForeColor = Color.Green;
                    threads1.ForeColor = Color.Red;
                }
                else if (int.Parse(threads1.Text) > int.Parse(threads2.Text))
                {
                    threads2.ForeColor = Color.Red;
                    threads1.ForeColor = Color.Green;

                }

                else
                {
                    threads1.ForeColor = Color.Yellow;
                    threads2.ForeColor = Color.Yellow;
                }

                clock1.Text = ds.Tables[0].Rows[0][3].ToString();
                clock2.Text = ds.Tables[0].Rows[1][3].ToString();
                String clc1, clc2;
                if (clock1.Text.Length >= 4)
                {
                    clc1 = clock1.Text.Remove(3);
                }
                else
                {
                    clc1 = clock1.Text.Remove(1);
                }
                if (clock2.Text.Length > 4)
                {
                    clc2 = clock2.Text.Remove(3);
                }
                else
                {
                    clc2 = clock2.Text.Remove(1);
                }

                float f1 = float.Parse(clc1);
                float f2 = float.Parse(clc2);

                if (f1 > f2)
                {

                    clock1.ForeColor = Color.Green;
                    clock2.ForeColor = Color.Red;

                }
                else if (f1 < f2)
                {
                    clock2.ForeColor = Color.Green;
                    clock1.ForeColor = Color.Red;
                }
                else
                {
                    clock1.ForeColor = Color.Yellow;
                    clock2.ForeColor = Color.Yellow;
                }

                cache1.Text = ds.Tables[0].Rows[0][4].ToString();
                cache2.Text = ds.Tables[0].Rows[1][4].ToString();
                String cac1, cac2;
                if (cache1.Text.Length > 3)
                    cac1 = cache1.Text.Remove(2);
                else
                    cac1 = cache1.Text.Remove(1);
                if (cache2.Text.Length > 3)
                    cac2 = cache2.Text.Remove(2);
                else
                    cac2 = cache2.Text.Remove(1);

                int cace1 = int.Parse(cac1);
                int cace2 = int.Parse(cac2);

                if (cace1 > cace2)
                {

                    cache1.ForeColor = Color.Green;
                    cache2.ForeColor = Color.Red;

                }
                else if (cace1 < cace2)
                {
                    cache2.ForeColor = Color.Green;
                    cache1.ForeColor = Color.Red;
                }
                else
                {
                    cache2.ForeColor = Color.Yellow;
                    cache1.ForeColor = Color.Yellow;
                }

                score1.Text = ds.Tables[0].Rows[0][5].ToString();
                score2.Text = ds.Tables[0].Rows[1][5].ToString();

                if (int.Parse(score1.Text) < int.Parse(score2.Text))
                {
                    score2.BackColor = Color.Green;
                    score1.BackColor = Color.Red;
                }
                else if (int.Parse(score1.Text) > int.Parse(score2.Text))
                {
                    score2.BackColor = Color.Red;
                    score1.BackColor = Color.Green;

                }

                else
                {
                    score1.BackColor = Color.Yellow;
                    score2.BackColor = Color.Yellow;
                }

                Table1.Visible = true;




            }

        }


    }


}
