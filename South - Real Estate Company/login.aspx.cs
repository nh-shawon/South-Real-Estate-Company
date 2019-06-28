using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace South___Real_Estate_Company
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from registration where Name='" + un.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select Password from registration where Name='" + un.Text + "'";
                SqlCommand passcom = new SqlCommand(checkPasswordQuery, conn);
                string password = passcom.ExecuteScalar().ToString();
                if (password == pass.Text)
                {
                    Session["New"] = un.Text;
                    Response.Write("Password is Correct");
                    conn.Close();
                    Response.Redirect("index.aspx");
                }
                else
                {
                    conn.Close();
                    Response.Write("Password is not Correct");
                }
                
            }
            else
            {
                Response.Write("User name is not Correct");
            }
        }
    }
}