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
    public partial class concact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label1.Text = Session["New"].ToString();
            }
            else
            {
                loginStatus.Visible = false;
            }
            

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("index.aspx");
        }

        protected void sm_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insert = "insert into contact (Id,Name,Phone,Email,Message) values (@IDs,@Names,@Phones,@Emails,@Messages)";
                SqlCommand com = new SqlCommand(insert, conn);

                com.Parameters.AddWithValue("@IDs", newGUID.ToString());
                com.Parameters.AddWithValue("@Names", tname.Text);
                com.Parameters.AddWithValue("@Phones", tphone.Text);
                com.Parameters.AddWithValue("@Emails", temail.Text);
                com.Parameters.AddWithValue("@Messages", tmessage.Text);
                com.ExecuteNonQuery();
                Response.Redirect("index.aspx");
                conn.Close();
                Response.Redirect("index.aspx");

            }
            catch (Exception ex)
            {
               
                Response.Write("Error: " + ex.ToString());
            }


            
        }
    }
}