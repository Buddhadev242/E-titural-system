<%@ Page Title="" Language="VB" MasterPageFile="~/user.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
        .style2
        {
            height: 116px;
        }
        .style3
        {
            height: 86px;
        }
        .style4
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style4" style="font-size: x-large; color: #000066">
            About Us:-</td>
    </tr>
    <tr>
        <td class="style2">
            <span style="color: rgb(102, 0, 102); font-family: Verdana, Geneva, sans-serif; font-size: 15px; font-style: italic; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
            Even if you have read one good book in your life, you will know what reading 
            gives. It gives you incomparable pleasure. While there is no doubt about the 
            fact that reading is a priceless activity, it has been observed that the habit 
            of reading has declined of late. One of the main causes for this decline is the 
            growth of technology.</span></td>
    </tr>
    <tr>
        <td class="style3" 
            style="color: #003300; font-style: italic; font-size: medium;">
            &quot;The e-Tutorial website Provide the Learning book,question and program 
            ,suggested things Now we can search different book,question etc. ...&quot;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#000099" 
                NavigateUrl="~/Registration.aspx">Click here to Registration</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>
            <img alt="" height="200" src="Image/Computer-Lab-825x510.jpg" width="400" />&nbsp;&nbsp;
            <img alt="" height="200" 
                src="Image/computer-lab-desks-tables-computer-lab-desks-furniture-com-tables-fresh-computer-desks-for-sale-at-staples.jpg" 
                width="330" /><br />
        </td>
    </tr>
</table>
</asp:Content>

