<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>



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
                      <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>" >   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/15-Tick24-icon.png" style="text-align: right" Width="30px" /> </a>  
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    
</asp:Content>




