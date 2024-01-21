using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOner : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    sqlsinif bgl = new sqlsinif();
    protected void BtnTarifOner_Click(object sender, EventArgs e)
    {
        string dosyaYolu = "~/Resimler/" + FileUpload1.FileName;

        // Resmi Uploads klasörüne kaydet
        FileUpload1.SaveAs(Server.MapPath(dosyaYolu));
        //FileUpload1.SaveAs(Server.MapPath("~/Resimler/" + FileUpload1.FileName));
        SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler(TarifAd,TarifMalzeme,Tarifyapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
        komut.Parameters.AddWithValue("@t1",TxtTarifAd.Text);
        komut.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
        komut.Parameters.AddWithValue("@t3", TxtYapılıs.Text);
        komut.Parameters.AddWithValue("@t4",  dosyaYolu);
        komut.Parameters.AddWithValue("@t5", TxtOneren.Text);
        komut.Parameters.AddWithValue("@t6", TxtMail.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Tarifiniz alınmıştır");

    }
}