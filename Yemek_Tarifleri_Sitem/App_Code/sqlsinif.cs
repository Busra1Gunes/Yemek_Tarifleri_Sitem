using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

public class sqlsinif
{
    public SqlConnection baglanti()
    {
       
           SqlConnection baglan=new SqlConnection(@"Data Source=AYZASOFT-0000;Initial Catalog=Dbo_yemektarifi;Integrated Security=True");
       // SqlConnection baglan = new SqlConnection(@"Server = Dbo_yemektarifi.mssql.somee.com; Database = Dbo_yemektarifi; User Id = Günes_SQLLogin_1; Password = 9ovzps2es3; TrustServerCertificate = true;");
        // SqlConnection baglan = new SqlConnection(@"workstation id = Dbo_yemektarifi.mssql.somee.com; packet size = 4096; user id = Günes_SQLLogin_1; pwd = 9ovzps2es3; data source = Dbo_yemektarifi.mssql.somee.com; persist security info = False; initial catalog = Dbo_yemektarifi");
        baglan.Open();  
        return baglan;  

    }
} 