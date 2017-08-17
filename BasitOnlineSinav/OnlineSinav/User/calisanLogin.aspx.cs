using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace OnlineSinav
{
    public partial class calisanLogin : System.Web.UI.Page
    {
       public static int calisanID;

        protected void ButtoncalisanGirisYap_Click(object sender, EventArgs e)
        {
            String username = this.TextBoxcalisanNo.Text;
            String password = this.TextBoxcalisanSifre.Text;
            String query = "select count(*) from CALISANLAR where calisanNo= @username and calisanSifre = @password";

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
                            Response.Redirect("sinav.aspx");
                        else
                            Response.Write("<script>alert('Yanlış Kullanıcı adı veya şifre lütfen kontrol edip tekrar deneyin');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Session["Calisan"] = Session.SessionID;
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

           
        }
    }
}