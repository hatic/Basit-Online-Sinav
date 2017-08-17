using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSinav
{
    public partial class sonucGountule : System.Web.UI.Page
    {
        int sinavID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Sid"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }



        protected void DropDownListSinavAdi_SelectedIndexChanged(object sender, EventArgs e)
        {
            sinavID = Convert.ToInt32(DropDownListSinavAdi.SelectedItem.Value);

            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            baglanti.Open();

            SqlDataAdapter da = new SqlDataAdapter("select CLS.calisanNo,CLS.calisanAdSoyad, SNC.dogruSayisi,SNC.yanlisSayisi from SONUC SNC, CALISANLAR CLS, SINAV SNV where"
                 + " SNV.sinavID=SNC.sinavID and CLS.calisanID=SNC.calisanID and SNV.sinavID='" + sinavID + "'", baglanti);
            DataTable ds = new DataTable();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

    }


}
