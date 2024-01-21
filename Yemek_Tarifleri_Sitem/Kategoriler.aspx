<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
        width: 100%;
    }
        .auto-style8 {
            width: 264px;
        }
        .auto-style9 {
            width: 32px;
        }
        .auto-style10 {
            width: 25px;
        }
        .auto-style11 {
            width: 32px;
            height: 34px;
        }
        .auto-style12 {
            width: 25px;
            height: 34px;
        }
        .auto-style13 {
            height: 34px;
        }
        .auto-style14 {
            height: 23px;
        }
        .auto-style15 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #84BAC6">
        <table class="auto-style7">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Height="30px" style="font-size: x-large" Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" Height="30px" style="font-size: x-large" Text="-" Width="30px" />
                </td>
                <td style="text-align: center">Kategori Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                         <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil">   <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete-icon.png" Width="30px" /></a>
                        </td>
                        <td style="text-align: right">
                      <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>" >   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/add-1-icon.png" style="text-align: right" Width="30px" /> </a>  
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
     <asp:Panel ID="Panel3" runat="server" style="background-color: #84BAC6; margin-top:8px"  >
        <table class="auto-style7">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button3" runat="server" Height="30px" style="font-size: x-large" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button4" runat="server" Height="30px" style="font-size: x-large" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td style="text-align: center" class="auto-style13">Kategori Ekleme</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style15">Kategori Ad</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtKtgrAd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Kategori İkon</td>
                <td class="auto-style15">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Button ID="btnEkle" runat="server" Height="31px" style="font-weight: 700; font-size: small" Text="Ekle" Width="100px" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

