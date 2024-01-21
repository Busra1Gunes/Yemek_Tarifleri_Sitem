using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOnerDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string dosyaYolu;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];

        if(Page.IsPostBack==false)
        {  
        SqlCommand komut = new SqlCommand("Select * from tbl_tarifler where tarifid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1",id);
        SqlDataReader dr = komut.ExecuteReader();

       while (dr.Read())
        {
            txtAd.Text = dr[1].ToString();
            txtMalzeme.Text = dr[2].ToString();
            txtYapılıs.Text = dr[3].ToString();
            txtOneren.Text = dr[5].ToString();
            txtMail.Text = dr[6].ToString();
                dosyaYolu =dr[4].ToString();




        }
        bgl.baglanti().Close();
        }
        if (Page.IsPostBack == false)
        {
            //Kategori Listesi
            SqlCommand kmt = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = kmt.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update tbl_tarifler set TarifDurum=1  where tarifid=@p1",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
 
        //Yemeği Ana Sayfaya Ekleme
        SqlCommand komut2 = new SqlCommand("insert into Tbl_yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid,yemekResim) values(@p1,@p2,@p3,@p4, @p5)",bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", txtAd.Text);
        komut2.Parameters.AddWithValue("@p2", txtMalzeme.Text);
        komut2.Parameters.AddWithValue("@p3", txtYapılıs.Text);
        komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut2.Parameters.AddWithValue("@p5",dosyaYolu);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();

        //Kategori Sayısını arttırma
        SqlCommand komut3 = new SqlCommand("update Tbl_Kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();



    }
}