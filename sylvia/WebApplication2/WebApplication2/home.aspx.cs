using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class home : System.Web.UI.Page
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
                
                string query = "select * from users where userID =" + (string)(Session["userid"]);
                SqlCommand myCommand = new SqlCommand(query, cnn);
                SqlDataReader reader = myCommand.ExecuteReader();

                while (reader.Read())
                {
                    usern.Text =(string)Session["user"];
                    p1.Text = Convert.ToString(reader["profile"]);
                    p2.Text = Convert.ToString(reader["description"]);
                }
                reader.Close();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            FormsAuthentication.SignOut();
            Response.Redirect("WebForm1.aspx");
        }


        
    }
}