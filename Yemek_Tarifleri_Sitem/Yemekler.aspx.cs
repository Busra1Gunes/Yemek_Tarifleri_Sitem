using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yemekler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string islem = "";
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
        if(Page.IsPostBack==false)
        {

            id = Request.QueryString["yemekid"];
            islem = Request.QueryString["islem"];
            //Kategori Listesi
            SqlCommand kmt = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = kmt.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "KAtegoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
        //Yemek Listesi
        SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler",bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

       if(islem=="sil")
        {
            SqlCommand komuta = new SqlCommand("Delete from tbl_yemekler where yemekid=@p1", bgl.baglanti());
            komuta.Parameters.AddWithValue("@p1", id);
            komuta.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
     
      


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        //Yemek Ekleme
        SqlCommand komut = new SqlCommand("insert into Tbl_yemekler(YemekAd, YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", txtYemekAd.Text);
        komut.Parameters.AddWithValue("@p2", txtMalzeme.Text);
        komut.Parameters.AddWithValue("@p3", txtTarif.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        //Kategori Sayısını arttırma
        SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();


    }
}