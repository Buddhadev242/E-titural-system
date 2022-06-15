<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AdminLogin.aspx.vb" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 285px;
        }
        .style3
        {
            width: 285px;
            height: 30px;
        }
        .style4
        {
            height: 30px;
        }
        .style5
        {
            width: 285px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1"  style="color: #000000">
        <tr style="font-size: large">
            <td class="style2">
                &nbsp;</td>
            <td>
                Login Your Account</td>
        </tr>
        <tr>
            <td class="style3">
                Provide UserName</td>
            <td class="style4">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Provide Password</td>
            <td class="style6">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Login" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblMeassage" runat="server" ForeColor="#FF6600"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

