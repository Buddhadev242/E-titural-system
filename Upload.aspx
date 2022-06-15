<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Upload.aspx.vb" Inherits="Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            height: 28px;
        }
        .style4
        {
            height: 42px;
        }
        .style6
        {
            height: 37px;
        }
        .style13
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="color: #000000">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td align="justify" style="font-size: x-large; color: #0000FF;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                -:Upload Your Infromation:-</td>
        </tr>
        <tr>
            <td class="style3" style="font-size: large">
                </td>
            <td class="style3" style="font-size: large">
                <asp:Label ID="lblmeassage" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hllogin" runat="server" ForeColor="#FF33CC" 
                    NavigateUrl="~/AdminLogin.aspx" Visible="False">Login</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style3" style="font-size: large">
                Uploader Name</td>
            <td class="style3" style="font-size: large">
                <asp:TextBox ID="txtUploadername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="font-size: large">
                Stream</td>
            <td class="style4" style="font-size: large">
&nbsp;<asp:DropDownList ID="ddlstream" runat="server" AutoPostBack="True">
                    <asp:ListItem>Select Stream</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>B.Sc</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Semester&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlsemester" runat="server" Visible="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style6" style="font-size: large">
                Year</td>
            <td class="style6" style="font-size: large">
                <asp:DropDownList ID="ddlyear" runat="server">
                    <asp:ListItem>Select Year</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style13" style="font-size: large">
                Type</td>
            <td class="style13" style="font-size: large">
                <asp:DropDownList ID="ddltype" runat="server" AutoPostBack="True">
                    <asp:ListItem>Select Any Type</asp:ListItem>
                    <asp:ListItem>Question</asp:ListItem>
                    <asp:ListItem>Book</asp:ListItem>
                    <asp:ListItem>Programme</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
</asp:Content>

