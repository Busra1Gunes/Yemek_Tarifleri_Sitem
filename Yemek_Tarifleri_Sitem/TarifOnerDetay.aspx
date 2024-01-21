<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            height: 23px;
            width: 205px;
        }
        .auto-style8 {
            width: 205px;
        }
        .auto-style12 {
            height: 23px;
            width: 126px;
            text-align: right;
        }
        .auto-style13 {
            height: 21px;
            width: 126px;
            text-align: right;
        }
        .auto-style14 {
            width: 126px;
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style3">
        TARİF ONAY PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2" style="width: 446px">
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style13"><b>Tarif Adı :</b></td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtAd" runat="server" CssClass="tb5" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><b>Malzemeler :</b></td>
                <td class="auto-style8" style="margin-left: 800px">
                    <asp:TextBox ID="txtMalzeme" runat="server" CssClass="tb5" Height="81px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><b style="text-align: right">Yapılışı : </b></td>
                <td class="auto-style8" style="margin-left: 360px">
                    <asp:TextBox ID="txtYapılıs" runat="server" CssClass="tb5" Height="183px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Tarif Resim :</td>
                <td class="auto-style7">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="240px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Öneren :</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtOneren" runat="server" CssClass="tb5" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Öneren Mail :</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtMail" runat="server" CssClass="tb5" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Kategori :</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="240px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="button" Height="47px" OnClick="Button1_Click" Text="Onayla" Width="204px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

