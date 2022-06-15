<%@ Page Title="" Language="VB" MasterPageFile="~/user.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1 {
            width: 100%;
        }
        .style2
        {
            height: 22px;
        }
        .style3
        {
            height: 33px;
        }
        .style4
        {
            height: 25px;
        }
        .style5
        {
            height: 30px;
        }
        .style7
        {
            height: 28px;
        }
        .style8
        {
            height: 31px;
        }
        .style9
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="color: #000000">
        <tr>
            <td class="style2" style="font-size: x-large; color: #000066">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                -:Details Of Your Search Iteam:-</td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl10" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #000000">
                <asp:Label ID="lbl11" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #000000">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hld" runat="server">Download File</asp:HyperLink>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

