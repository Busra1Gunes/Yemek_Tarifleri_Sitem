<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

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
            text-align: left;
        }
        .auto-style16 {
            height: 67px;
        }
        .auto-style17 {
            height: 23px;
            width: 146px;
        }
        .auto-style19 {
            height: 67px;
            width: 146px;
            text-align: right;
        }
        .auto-style21 {
            height: 21px;
            width: 146px;
            text-align: right;
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
                    <asp:Button ID="Button2" runat="server" Height="30px" style="font-size: x-large" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td style="text-align: center">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px" >
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                         <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil">   <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete-icon.png" Width="30px" /></a>
                        </td>
                        <td style="text-align: right">
                      <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>" >   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/add-1-icon.png" style="text-align: right" Width="30px" /> </a>  
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
                    <asp:Button ID="Button3" runat="server" Height="30px" style="font-size: x-large" Text="+" Width="30px" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button4" runat="server" Height="30px" style="font-size: x-large" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td style="text-align: center" class="auto-style13">Yemek Ekleme</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style21">Yemek Ad : </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtYemekAd" runat="server" CssClass="tb5" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Malzemeler : </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtMalzeme" runat="server" CssClass="tb5" Height="47px" TextMode="MultiLine" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">Tarif : </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtTarif" runat="server" CssClass="tb5" Height="143px" TextMode="MultiLine" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">Resim : </td>
                <td class="auto-style15">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="285px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style21">Kategori : </td>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" style="text-align: left" Width="285px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Button ID="btnEkle" runat="server" CssClass="button" Height="47px" style="font-weight: 700; font-size: small" Text="Ekle" Width="100px" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>



