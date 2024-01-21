<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            font-size: large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        <strong><em style="color: #000000">HAKKIMIZDA</em></strong></p>
    <asp:DataList ID="DataList2" runat="server" Width="450px" style="font-style: italic">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <div style="text-align: center">
        <p>

        </p>
            <asp:Image ID="Image1" runat="server" Height="160px" ImageAlign="Middle" ImageUrl="~/resimler/what-is-a-blog-1200x600-1.jpeg" Width="223px" />
    </div>


</asp:Content>

