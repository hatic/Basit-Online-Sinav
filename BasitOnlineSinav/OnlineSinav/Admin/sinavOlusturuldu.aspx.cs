using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSinav
{
    public partial class sinavOlusturuldu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Sid"] == null)
            {
                Response.Redirect("login.aspx");

            }


        }
    }
}