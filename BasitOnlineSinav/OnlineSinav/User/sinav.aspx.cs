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

    public partial class sinav : System.Web.UI.Page
    {
         String[] secilenSecenek = new String[20];
         DataTable dt = new DataTable();
         int i;
         public static int say = 0;

         protected void Page_Load(object sender, EventArgs e)
         {
             if (Session["Calisan"] == null)
             {
                 Response.Redirect("calisanLogin.aspx");

             } 
             if (!IsPostBack)
             {
                 Session["time"] = DateTime.Now.AddMinutes(15);

             }
         }
         public void sinaviGonder() {
             System.Data.DataSet ds = new System.Data.DataSet();
             SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

             baglanti.Open();



             for (i = 0; i < 20; i++)
             {
                 if ((GridView1.Rows[i].FindControl("radioButtonA") as RadioButton).Checked) { secilenSecenek[i] = "A"; }
                 else if ((GridView1.Rows[i].FindControl("radioButtonB") as RadioButton).Checked) { secilenSecenek[i] = "B"; }
                 else if ((GridView1.Rows[i].FindControl("radioButtonC") as RadioButton).Checked) { secilenSecenek[i] = "C"; }
                 int soruID = Convert.ToInt32((GridView1.Rows[i].FindControl("HiddenField1") as HiddenField).Value);
                 SqlCommand cmdSinavKaydet = new SqlCommand("insert into CEVAPLAR(cevapSecenegi, SoruID, calisanID) values( '" + secilenSecenek[i] + "','" + soruID + "','" + calisanLogin.calisanID + "')", baglanti);
                 SqlDataAdapter da = new SqlDataAdapter(cmdSinavKaydet);
                 da.Fill(ds);

             }
             Response.Redirect("sonucGoster.aspx");
            
         }

        protected void ButtonSinaviGonder_Click(object sender, EventArgs e)
        {
            sinaviGonder();
        }

       

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            TimeSpan time1 = new TimeSpan();
            time1 = (DateTime)Session["time"] - DateTime.Now;
            if (time1.Minutes <= 0)
            {
                LabelZaman.Text = "Süreniz doldu!";
                sinaviGonder();
            }
            else
            {
                LabelZaman.Text = time1.Minutes.ToString();
            }

        }

     
        

    }
}