﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class HakkımızdaAdmin : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        if(Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand("Select *from Tbl_Hakkimizda", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();

            }
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
        SqlCommand komuta = new SqlCommand("update tbl_hakkimizda set Metin=@p1",bgl.baglanti());
        komuta.Parameters.AddWithValue("@p1", TextBox1.Text);
        komuta.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}