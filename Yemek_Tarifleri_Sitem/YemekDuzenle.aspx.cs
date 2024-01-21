using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];
        if(Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand("Select * from tbl_yemekler where yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();

            }
            bgl.baglanti().Close();
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

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));
        SqlCommand komut = new SqlCommand("update Tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4,yemekResim=@p6 where yemekid=@p5",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p6", "~/Resimler/"+FileUpload1.FileName);
        komut.Parameters.AddWithValue("@p5", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // Günün yemeğini seçmk için önce tüm günün yemeklerini false yaptık
        SqlCommand komuta = new SqlCommand("update tbl_yemekler set durum=0 ", bgl.baglanti());
        komuta.ExecuteNonQuery();
        bgl.baglanti().Close();
        //sonra sadece günü yemeği seçileni true yaptık
        SqlCommand komutb = new SqlCommand("update tbl_yemekler set durum=0 where yemekid=@p5 ", bgl.baglanti());
        komutb.Parameters.AddWithValue("@p5", id);
        komutb.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}