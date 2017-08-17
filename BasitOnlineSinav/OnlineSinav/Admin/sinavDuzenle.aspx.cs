using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSinav
{
    public partial class sinavDüzenle : System.Web.UI.Page
    {

        int sinavID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Sid"] == null)
            {
                Response.Redirect("login.aspx");

            } 

        }

        protected void DropDownListSinavListele_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*sinavID = Convert.ToInt32(DropDownListSinavListele.SelectedItem.Value);

            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            baglanti.Open();

            SqlDataAdapter da = new SqlDataAdapter("SELECT SORULAR.soruMetini, SORULAR.secenekMetniA, SORULAR.secenekMetniB, SORULAR.secenekMetniC, SORULAR.soruID FROM "
            +"SORULAR INNER JOIN SINAV ON SORULAR.sinavID = SINAV.sinavID WHERE (SINAV.sinavID='"+sinavID+"')", baglanti);
            DataTable ds = new DataTable();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();*/
        }

       
       

        
            
        
    }
}