using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class score : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("WebForm1.aspx");
            }
            SqlConnection cnn;
            String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            cnn = new SqlConnection(strConnString);
            cnn.Open();
            string query = "select * from rubix"; 
            SqlCommand myCommand = new SqlCommand(query, cnn);
                SqlDataReader reader = myCommand.ExecuteReader();

                while (reader.Read())
                {
                      snum.Text = Convert.ToString(reader["snum"]);
                      anum.Text = Convert.ToString(reader["anum"]);
                }
                reader.Close();
        }

        void updatescore()
        {
            SqlConnection cnn;
            String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            cnn = new SqlConnection(strConnString);
            cnn.Open();
            string query = "UPDATE rubix SET snum = "+ snum.Text + ", anum = " + anum.Text ;
            SqlCommand myCommand = new SqlCommand(query, cnn);
            SqlDataReader reader = myCommand.ExecuteReader();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            updatescore();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            updatescore();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            updatescore();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            updatescore();
        }
    }
}