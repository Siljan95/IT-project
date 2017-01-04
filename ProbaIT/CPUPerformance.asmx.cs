using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ProbaIT
{
    /// <summary>
    /// Summary description for CPUPerformance
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CPUPerformance : System.Web.Services.WebService
    {

        [WebMethod(Description = "This is web service for comparing the performances of two CPUs passed by ID number as arguments to the function")]
        public DataSet Compare(string ID1, string ID2)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            String querry = "SELECT Name , Cores , Threads , Clock , Cache , Score  FROM Processors WHERE Id=@P1 OR Id= @P2";

            SqlCommand command = new SqlCommand(querry, connection);
            command.Parameters.AddWithValue("@P1", ID1);
            command.Parameters.AddWithValue("@P2", ID2);
            List<String> list = new List<String>();

            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds = new DataSet();
            adapter.SelectCommand = command;
            try
            {
                connection.Open();

                adapter.Fill(ds, "CPU");

            }
            catch (Exception err)
            {
                //  errMsg.Text= err.Message;


            }
            finally
            {
                connection.Close();

            }


            return ds;

        }
    }
}