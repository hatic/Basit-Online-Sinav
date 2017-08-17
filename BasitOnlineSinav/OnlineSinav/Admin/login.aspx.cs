using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.Security; 
namespace OnlineSinav
{

    public partial class login : System.Web.UI.Page
    {
      
        protected void ButtonGirisYap_Click(object sender, EventArgs e)
        {

            String username = this.TextBoxKullaniciAdi.Text;
            String password = this.TextBoxSifre.Text;
            String query = "select count(*) from YONETICILER where yoneticiKullaniciAdi= @username and yoneticiSifre = @password";

            try
            {
                using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString))
                {
                    conn.Open();

                    using (SqlCommand command = new SqlCommand(query, conn))
                    {
                        command.Parameters.Add(new SqlParameter("@username", username));
                        command.Parameters.Add(new SqlParameter("@password", password));

                        int result = (int)command.ExecuteScalar();
                        if (result > 0)
                        {
                            Session["Sid"] = Session.SessionID;
                            Response.Redirect("sinavOlustur.aspx");
                        }
                        else
                            Response.Write("<script>alert('Yanlış Kullanıcı adı veya şifre lütfen kontrol edip tekrar deneyin');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }
       

    }
}