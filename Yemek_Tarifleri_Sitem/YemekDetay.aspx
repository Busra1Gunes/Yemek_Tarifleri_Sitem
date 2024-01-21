<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            color: #000000;
        background-color: #FFFFFF;
        width: 232px;

    }
    .auto-style4 {
        height: 30px;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        text-align: right;
        height: 26px;
        color: #000000;
    }
    .auto-style7 {
        height: 26px;
    }
    .auto-style8 {
        height: 22px;
            color: #000000;
        }
    .auto-style9 {
        height: 24px;
    }
    .auto-style10 {
        height: 29px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label3" runat="server" style="font-size: xx-large; font-weight: 700; font-size:xx-large; color: #000000; font-style: italic; text-align: center;" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server" style="background-color: #E0E2E0" Width="495px">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style9" style="color: #000000">
                        <asp:Label ID="Label4" runat="server" style="font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: dotted; border-color: #D9524C #DD544D #527BAF #D15049; border-bottom-width: thin" class="auto-style10">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>' style="color: #000000"></asp:Label>
                        -
                        <asp:Label ID="Label6" runat="server" style="font-size: xx-small" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style8" colspan="2"><strong><em>YORUM YAPMA PANELİ</em></strong></td>
            </tr>
            <tr>
                <td class="auto-style5"><b style="color: #000000">Ad Soyad :</b></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><b>Mail :</b></td>
                <td style="margin-left: 800px; color: #000000;" class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><b style="color: #000000">Yorumunuz : </b></td>
                <td style="margin-left: 360px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="123px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" Width="204px" />
                </td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

