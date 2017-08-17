using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSinav
{
    public partial class sinavPaylas : System.Web.UI.Page
    {
        string sinavAdi;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Sid"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void DropDownListSinavlar_SelectedIndexChanged(object sender, EventArgs e)
        {
            sinavAdi = DropDownListSinavlar.SelectedItem.Text;
            LabelSinavOlusturuldu.Text="Sınav başarıyla paylaşılmıştır";
            
        }

        protected void ButtonSinavPaylas_Click(object sender, EventArgs e)
        {
            System.Data.DataSet ds = new System.Data.DataSet();
            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

            baglanti.Open();
            
            SqlCommand cmdSonucEkle = new SqlCommand("begin tran"
                                                    +" UPDATE SINAV SET sinavPaylasimDurumu = '0' WHERE sinavPaylasimDurumu='1'"
                                                    + " UPDATE SINAV SET sinavPaylasimDurumu = '1' WHERE sinavBasligi='" + sinavAdi + "'"
                                                    +" commit", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(cmdSonucEkle);
            da.Fill(ds);
        }

       
    }
}