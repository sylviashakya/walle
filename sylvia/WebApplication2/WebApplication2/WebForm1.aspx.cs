﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.IO;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn;
            SqlDataAdapter myReader = null;
            DataSet myset = new DataSet();
            string a = txtusername.Text;
            string b = txtpassword.Text;
            String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            cnn = new SqlConnection(strConnString);
            try
            {
                cnn.Open();
                string query = "select * from login where username = '" + a + "' and password = '" + b + "'";
                SqlCommand myCommand = new SqlCommand(query, cnn);
                myReader = new SqlDataAdapter(myCommand);
                myset = new DataSet();
                myReader.Fill(myset);
                SqlDataReader reader = myCommand.ExecuteReader();
                if (myset.Tables[0].Rows.Count > 0)
                {
                    Session["user"] = a;
                    while (reader.Read())
                        Session["userid"] = Convert.ToString(reader["UserID"]);
                    Response.Redirect("home.aspx");
                }
                else
                    Label1.Text = "Incorrect username or password. Try again.";
                Label1.Visible = true;

            }
            catch (Exception)
            {
                Label1.Text = "error";
                Label1.Visible = true;
            }
        }
    }
}