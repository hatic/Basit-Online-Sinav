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
    public partial class sonucGoster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Calisan"] = null;
            System.Data.DataSet ds = new System.Data.DataSet();
            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

            baglanti.Open();

            SqlCommand cmdSonucEkle = new SqlCommand("Begin tran"
                                            + " DECLARE @yanlisSayisi int,@dogruSayisi int,@sinavID int"
                                            + " set @yanlisSayisi=(select count(CV.SoruID)  from CEVAPLAR CV,CALISANLAR C,DOGRUCEVAPLAR DC where CV.SoruID=DC.soruID AND CV.cevapSecenegi !=DC.cevapSecenegi and C.calisanID='" + calisanLogin.calisanID + "' )"
                                            + " set @dogruSayisi=(select count(CV.SoruID)  from CEVAPLAR CV ,DOGRUCEVAPLAR DC,CALISANLAR C where CV.SoruID=DC.soruID AND CV.cevapSecenegi=DC.cevapSecenegi AND  C.calisanID='" + calisanLogin.calisanID + "' )"
                                            + " set @sinavID=(select sinavID from SINAV where sinavPaylasimDurumu='1')"
                                            + " insert into SONUC(calisanID, yanlisSayisi, dogruSayisi, sinavID) values('" + calisanLogin.calisanID + "' ,@yanlisSayisi,@dogruSayisi,@sinavID)"
                                            + " commit", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(cmdSonucEkle);
            da.Fill(ds);

            SqlCommand cmdSonucCek = new SqlCommand("select dogruSayisi,yanlisSayisi from sonuc where calisanID='" + calisanLogin.calisanID + "'", baglanti);
            SqlDataReader reader = cmdSonucCek.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                   //TextBoxDogruSayisi.Text=Convert.ToString(reader.GetValue(0));
                  // TextBoxYanlisSayisi.Text =Convert.ToString( reader.GetValue(1));
                   
                }
                


            }
            else
            {
                Response.Redirect("calisanLogin.aspx");
            }
            baglanti.Close();

        }
    }
}