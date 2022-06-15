<%@ Page Title="" Language="VB" MasterPageFile="~/user.master" AutoEventWireup="false" CodeFile="UserLogin.aspx.vb" Inherits="UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 187px;
        }
        .style3
        {
            width: 187px;
            height: 30px;
        }
        .style4
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="color: #000000; height: 141px;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="color: #6699FF; font-size: large">
                Login Your Account</td>
        </tr>
        <tr>
            <td class="style2">
                Provide UserName</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style2">
                Provide Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="Login" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMeassage0" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblMeassage" runat="server"></asp:Label>
            </td>
            <td class="style4">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#660066" 
                    NavigateUrl="~/ForgetPassword.aspx">Forget Password? Click here.</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#003399" 
                    NavigateUrl="~/Registration.aspx">New User To Click Here?</asp:HyperLink>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

