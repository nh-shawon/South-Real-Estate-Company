using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace South___Real_Estate_Company
{
    public partial class about_us : System.Web.UI.Page
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
    }
}