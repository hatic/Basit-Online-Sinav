using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSinav
{

    public partial class sinavOlustur : System.Web.UI.Page
    {
        public static int sinavID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Sid"] == null)
            {
                Response.Redirect("login.aspx");

            }
        }
     

        protected void ButtonSinaviKaydet_Click(object sender, EventArgs e)
        {
            String[] textBoxSoruMetni = new String[20]{TextBoxSoruMetni1.Text,TextBoxSoruMetni2.Text,TextBoxSoruMetni3.Text,TextBoxSoruMetni4.Text,
            TextBoxSoruMetni5.Text,TextBoxSoruMetni6.Text,TextBoxSoruMetni7.Text,TextBoxSoruMetni8.Text,TextBoxSoruMetni9.Text,TextBoxSoruMetni10.Text,
            TextBoxSoruMetni11.Text,TextBoxSoruMetni12.Text,TextBoxSoruMetni13.Text,TextBoxSoruMetni14.Text,
            TextBoxSoruMetni15.Text,TextBoxSoruMetni16.Text,TextBoxSoruMetni17.Text,TextBoxSoruMetni18.Text,TextBoxSoruMetni19.Text,TextBoxSoruMetni20.Text
            };
            String[] textBoxASecenekleri = new String[20]{TextBoxSecenekA1.Text,TextBoxSecenekA2.Text,TextBoxSecenekA3.Text,TextBoxSecenekA4.Text,TextBoxSecenekA5.Text,
            TextBoxSecenekA6.Text,TextBoxSecenekA7.Text,TextBoxSecenekA8.Text,TextBoxSecenekA9.Text,TextBoxSecenekA10.Text,
            TextBoxSecenekA11.Text,TextBoxSecenekA12.Text,TextBoxSecenekA13.Text,TextBoxSecenekA14.Text,TextBoxSecenekA15.Text,
            TextBoxSecenekA16.Text,TextBoxSecenekA17.Text,TextBoxSecenekA18.Text,TextBoxSecenekA19.Text,TextBoxSecenekA20.Text};
            String[] textBoxBSecenekleri = new String[20]{TextBoxSecenekB1.Text,TextBoxSecenekB2.Text,TextBoxSecenekB3.Text,TextBoxSecenekB4.Text,TextBoxSecenekB5.Text,
            TextBoxSecenekB6.Text,TextBoxSecenekB7.Text,TextBoxSecenekB8.Text,TextBoxSecenekB9.Text,TextBoxSecenekB10.Text,
            TextBoxSecenekB11.Text,TextBoxSecenekB12.Text,TextBoxSecenekB13.Text,TextBoxSecenekB14.Text,TextBoxSecenekB15.Text,
            TextBoxSecenekB16.Text,TextBoxSecenekB17.Text,TextBoxSecenekB18.Text,TextBoxSecenekB19.Text,TextBoxSecenekB20.Text};
            String[] textBoxCSecenekleri = new String[20]{TextBoxSecenekC1.Text,TextBoxSecenekC2.Text,TextBoxSecenekC3.Text,TextBoxSecenekC4.Text,TextBoxSecenekC5.Text,
            TextBoxSecenekC6.Text,TextBoxSecenekC7.Text,TextBoxSecenekC8.Text,TextBoxSecenekC9.Text,TextBoxSecenekC10.Text,
            TextBoxSecenekC11.Text,TextBoxSecenekC12.Text,TextBoxSecenekC13.Text,TextBoxSecenekC14.Text,TextBoxSecenekC15.Text,
            TextBoxSecenekC16.Text,TextBoxSecenekC17.Text,TextBoxSecenekC18.Text,TextBoxSecenekC19.Text,TextBoxSecenekC20.Text};

          

            Char[] secilenSecenek = new Char[20];
            if (RadioButtonA1.Checked) { secilenSecenek[0] = 'A'; }
            else if (RadioButtonB1.Checked) { secilenSecenek[0] = 'B'; }
            else if (RadioButtonC1.Checked) { secilenSecenek[0] = 'C'; }

            if (RadioButtonA2.Checked) { secilenSecenek[1] = 'A'; }
            else if (RadioButtonB2.Checked) { secilenSecenek[1] = 'B'; }
            else if (RadioButtonC2.Checked) { secilenSecenek[1] = 'C'; }

            if (RadioButtonA3.Checked) { secilenSecenek[2] = 'A'; }
            else if (RadioButtonB3.Checked) { secilenSecenek[2] = 'B'; }
            else if (RadioButtonC3.Checked) { secilenSecenek[2] = 'C'; }

            if (RadioButtonA4.Checked) { secilenSecenek[3] = 'A'; }
            else if (RadioButtonB4.Checked) { secilenSecenek[3] = 'B'; }
            else if (RadioButtonC4.Checked) { secilenSecenek[3] = 'C'; }

            if (RadioButtonA5.Checked) { secilenSecenek[4] = 'A'; }
            else if (RadioButtonB5.Checked) { secilenSecenek[4] = 'B'; }
            else if (RadioButtonC5.Checked) { secilenSecenek[4] = 'C'; }

            if (RadioButtonA6.Checked) { secilenSecenek[5] = 'A'; }
            else if (RadioButtonB6.Checked) { secilenSecenek[5] = 'B'; }
            else if (RadioButtonC6.Checked) { secilenSecenek[5] = 'C'; }

            if (RadioButtonA7.Checked) { secilenSecenek[6] = 'A'; }
            else if (RadioButtonB7.Checked) { secilenSecenek[6] = 'B'; }
            else if (RadioButtonC7.Checked) { secilenSecenek[6] = 'C'; }

            if (RadioButtonA8.Checked) { secilenSecenek[7] = 'A'; }
            else if (RadioButtonB8.Checked) { secilenSecenek[7] = 'B'; }
            else if (RadioButtonC8.Checked) { secilenSecenek[7] = 'C'; }

            if (RadioButtonA9.Checked) { secilenSecenek[8] = 'A'; }
            else if (RadioButtonB9.Checked) { secilenSecenek[8] = 'B'; }
            else if (RadioButtonC9.Checked) { secilenSecenek[8] = 'C'; }

            if (RadioButtonA10.Checked) { secilenSecenek[9] = 'A'; }
            else if (RadioButtonB10.Checked) { secilenSecenek[9] = 'B'; }
            else if (RadioButtonC10.Checked) { secilenSecenek[9] = 'C'; }


            if (RadioButtonA11.Checked) { secilenSecenek[10] = 'A'; }
            else if (RadioButtonB11.Checked) { secilenSecenek[10] = 'B'; }
            else if (RadioButtonC11.Checked) { secilenSecenek[10] = 'C'; }

            if (RadioButtonA12.Checked) { secilenSecenek[11] = 'A'; }
            else if (RadioButtonB12.Checked) { secilenSecenek[11] = 'B'; }
            else if (RadioButtonC12.Checked) { secilenSecenek[11] = 'C'; }

            if (RadioButtonA13.Checked) { secilenSecenek[12] = 'A'; }
            else if (RadioButtonB13.Checked) { secilenSecenek[12] = 'B'; }
            else if (RadioButtonC13.Checked) { secilenSecenek[12] = 'C'; }

            if (RadioButtonA14.Checked) { secilenSecenek[13] = 'A'; }
            else if (RadioButtonB14.Checked) { secilenSecenek[13] = 'B'; }
            else if (RadioButtonC14.Checked) { secilenSecenek[13] = 'C'; }

            if (RadioButtonA15.Checked) { secilenSecenek[14] = 'A'; }
            else if (RadioButtonB15.Checked) { secilenSecenek[14] = 'B'; }
            else if (RadioButtonC15.Checked) { secilenSecenek[14] = 'C'; }

            if (RadioButtonA16.Checked) { secilenSecenek[15] = 'A'; }
            else if (RadioButtonB16.Checked) { secilenSecenek[15] = 'B'; }
            else if (RadioButtonC16.Checked) { secilenSecenek[15] = 'C'; }

            if (RadioButtonA17.Checked) { secilenSecenek[16] = 'A'; }
            else if (RadioButtonB17.Checked) { secilenSecenek[16] = 'B'; }
            else if (RadioButtonC17.Checked) { secilenSecenek[16] = 'C'; }

            if (RadioButtonA18.Checked) { secilenSecenek[17] = 'A'; }
            else if (RadioButtonB18.Checked) { secilenSecenek[17] = 'B'; }
            else if (RadioButtonC8.Checked) { secilenSecenek[17] = 'C'; }

            if (RadioButtonA19.Checked) { secilenSecenek[18] = 'A'; }
            else if (RadioButtonB19.Checked) { secilenSecenek[18] = 'B'; }
            else if (RadioButtonC19.Checked) { secilenSecenek[18] = 'C'; }

            if (RadioButtonA20.Checked) { secilenSecenek[19] = 'A'; }
            else if (RadioButtonB20.Checked) { secilenSecenek[19] = 'B'; }
            else if (RadioButtonC20.Checked) { secilenSecenek[19] = 'C'; }

            System.Data.DataSet ds = new System.Data.DataSet();
            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

            baglanti.Open();



            SqlCommand cmdSinavEkle = new SqlCommand(" BEGIN TRANSACTION"
                                                       + " DECLARE @DataSinavID int "
                                                       + " INSERT INTO SINAV(sinavBasligi,sinavPaylasimDurumu) VALUES('" +TextBoxSinavBasligi.Text+ "','0') "
                                                       + "SELECT @DataSinavID = scope_identity()	 "
                                                       + "commit "
                                                       + "select top 1 sinavID from SINAV order by sinavID desc", baglanti);
            try
            {
                sinavID = (int)cmdSinavEkle.ExecuteScalar();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


            int soruSirasi = 1;

            for (int i = 0; i < 20; i++)
            {
                SqlCommand cmdSoruEkle = new SqlCommand("BEGIN TRANSACTION"
                + " DECLARE @DataSoruID int"

                + " INSERT INTO SORULAR(soruSirasi, soruMetini,secenekMetniA,secenekMetniB,secenekMetniC, sinavID) VALUES ('" + (soruSirasi + i) + "','" + textBoxSoruMetni[i] + "','" + textBoxASecenekleri[i] + "','" + textBoxBSecenekleri[i] + "','" + textBoxCSecenekleri[i] + "','" + sinavID + "')"
                + " SELECT @DataSoruID = scope_identity()"

                + " INSERT INTO DOGRUCEVAPLAR(sinavID, soruID, cevapSecenegi ) VALUES('" + sinavID + "',@DataSoruID,'" + secilenSecenek[i] + "') "
                + " COMMIT ", baglanti);
                SqlDataAdapter da = new SqlDataAdapter(cmdSoruEkle);
                da.Fill(ds);

            }


            Response.Redirect("sinavOlusturuldu.aspx");
        }

       

    }

}
