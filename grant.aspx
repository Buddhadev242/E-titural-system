<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="grant.aspx.vb" Inherits="grant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
        height: 22px;
    }
    .style5
    {
        height: 27px;
    }
    .style6
    {
        height: 32px;
    }
    .style7
    {
        height: 29px;
    }
    .style10
    {
        height: 28px;
    }
    .style11
    {
        height: 34px;
    }
    .style12
    {
        height: 37px;
    }
    .style13
    {
        height: 42px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="style1" style="color: #000000">
        <tr>
            <td class="style2" style="font-size: x-large; color: #000066">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -:Details Of Suggested&nbsp; Iteam:-</td>
        </tr>
        <tr>
            <td class="style5" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style12" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11" style="font-size: medium; color: #000000">
                <asp:Label ID="lbl9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style13" style="font-size: medium; color: #000000">
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hld" runat="server">Download File</asp:HyperLink>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #000000" class="style2">
                <asp:Button ID="Button1" runat="server" Text="Grant" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Delete" />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; color: #000000">
                <asp:Label ID="lblmeassage" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

