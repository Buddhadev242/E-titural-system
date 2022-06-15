<%@ Page Title="" Language="VB" MasterPageFile="~/user.master" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
        width: 235px;
    }
    .style3
    {
        width: 235px;
        height: 19px;
    }
    .style4
    {
        height: 19px;
    }
        .style5
        {
            width: 235px;
            height: 31px;
        }
        .style6
        {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1"  style="color: #000000; height: 587px;">
        <tr>
            <td class="style3" style="font-size: medium">
                </td>
            <td class="style4" style="font-size: large; color: #FF99CC;">
                Registration Your Account</td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Enter Your Name</td>
            <td style="font-size: medium">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="Please Provide Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Enter Your Addrees</td>
            <td style="font-size: medium">
                <asp:TextBox ID="txtaddrees" runat="server" TextMode="MultiLine"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtaddrees" ErrorMessage="Provide Addrees"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Choose UserName</td>
            <td style="font-size: medium">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Provide Username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Provide Password</td>
            <td style="font-size: medium">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtretypepassword" 
                    ErrorMessage="Password Does Not Match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Retype Password</td>
            <td style="font-size: medium">
                <asp:TextBox ID="txtretypepassword" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Upload Your Photo</td>
            <td style="font-size: medium">
                <asp:FileUpload ID="flphoto" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblphoto" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Provide Your Designation</td>
            <td style="font-size: medium">
                <asp:TextBox ID="txtDesignation" runat="server" TextMode="MultiLine"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Sex</td>
            <td style="font-size: medium">
                <asp:RadioButton ID="rdbmale" runat="server" GroupName="SEX" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdbfemale" runat="server" GroupName="SEX" Text="Female" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Enter Mail-id</td>
            <td style="font-size: medium">
                <asp:TextBox ID="txtMailid" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtMailid" ErrorMessage="Provide Valid Email Id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Enter Mobile Number</td>
            <td style="font-size: medium">
                <asp:TextBox ID="txtmobno" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtmobno" ErrorMessage="Enter Mobile Number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Select Date of Birth</td>
            <td style="font-size: medium">
                <asp:DropDownList ID="drpDay" runat="server" CssClass="style11">
                    <asp:ListItem Value="Day"></asp:ListItem>
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                    <asp:ListItem Value="6"></asp:ListItem>
                    <asp:ListItem Value="7"></asp:ListItem>
                    <asp:ListItem Value="8"></asp:ListItem>
                    <asp:ListItem Value="9"></asp:ListItem>
                    <asp:ListItem Value="10"></asp:ListItem>
                    <asp:ListItem Value="11"></asp:ListItem>
                    <asp:ListItem Value="12"></asp:ListItem>
                    <asp:ListItem Value="13"></asp:ListItem>
                    <asp:ListItem Value="14"></asp:ListItem>
                    <asp:ListItem Value="15"></asp:ListItem>
                    <asp:ListItem Value="16"></asp:ListItem>
                    <asp:ListItem Value="17"></asp:ListItem>
                    <asp:ListItem Value="18"></asp:ListItem>
                    <asp:ListItem Value="19"></asp:ListItem>
                    <asp:ListItem Value="20"></asp:ListItem>
                    <asp:ListItem Value="21"></asp:ListItem>
                    <asp:ListItem Value="22"></asp:ListItem>
                    <asp:ListItem Value="23"></asp:ListItem>
                    <asp:ListItem Value="24"></asp:ListItem>
                    <asp:ListItem Value="25"></asp:ListItem>
                    <asp:ListItem Value="26"></asp:ListItem>
                    <asp:ListItem Value="27"></asp:ListItem>
                    <asp:ListItem Value="28"></asp:ListItem>
                    <asp:ListItem Value="29"></asp:ListItem>
                    <asp:ListItem Value="30"></asp:ListItem>
                    <asp:ListItem Value="31"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;<asp:DropDownList ID="drpMonth" runat="server" CssClass="style11">
                    <asp:ListItem Value="Month"></asp:ListItem>
                    <asp:ListItem Value="JAN"></asp:ListItem>
                    <asp:ListItem Value="FEB"></asp:ListItem>
                    <asp:ListItem Value="MAR"></asp:ListItem>
                    <asp:ListItem Value="APR"></asp:ListItem>
                    <asp:ListItem Value="MAY"></asp:ListItem>
                    <asp:ListItem Value="JUN"></asp:ListItem>
                    <asp:ListItem Value="JUL"></asp:ListItem>
                    <asp:ListItem Value="AUG"></asp:ListItem>
                    <asp:ListItem Value="SEP"></asp:ListItem>
                    <asp:ListItem Value="OCT"></asp:ListItem>
                    <asp:ListItem Value="NOV"></asp:ListItem>
                    <asp:ListItem Value="DEC"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:DropDownList ID="drpYear" runat="server" CssClass="style11">
                    <asp:ListItem Value="Year"></asp:ListItem>
                    <asp:ListItem Value="1991"></asp:ListItem>
                    <asp:ListItem Value="1992"></asp:ListItem>
                    <asp:ListItem Value="1993"></asp:ListItem>
                    <asp:ListItem Value="1994"></asp:ListItem>
                    <asp:ListItem Value="1995"></asp:ListItem>
                    <asp:ListItem Value="1996"></asp:ListItem>
                    <asp:ListItem Value="1997"></asp:ListItem>
                    <asp:ListItem Value="1998"></asp:ListItem>
                    <asp:ListItem Value="1999"></asp:ListItem>
                    <asp:ListItem Value="2000"></asp:ListItem>
                    <asp:ListItem Value="2001"></asp:ListItem>
                    <asp:ListItem Value="2002"></asp:ListItem>
                    <asp:ListItem Value="2003"></asp:ListItem>
                    <asp:ListItem Value="2004"></asp:ListItem>
                    <asp:ListItem Value="2005"></asp:ListItem>
                    <asp:ListItem Value="2006"></asp:ListItem>
                    <asp:ListItem Value="2007"></asp:ListItem>
                    <asp:ListItem Value="2008"></asp:ListItem>
                    <asp:ListItem Value="2009"></asp:ListItem>
                    <asp:ListItem Value="2010"></asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Enter Roll No</td>
            <td style="font-size: medium">
                <asp:TextBox ID="txtroll" runat="server"></asp:TextBox>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtroll" ErrorMessage="Enter Valid Roll No"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:Label ID="lblroll" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large; color: #FF99FF;">
                Security Question</td>
            <td style="font-size: medium">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                I.What is your hoby ?</td>
            <td style="font-size: medium">
                <asp:TextBox ID="txthoby" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5" style="font-size: medium">
                II.What is your favorite game ?</td>
            <td style="font-size: medium" class="style6">
                <asp:TextBox ID="txtfg" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hllogin" runat="server" ForeColor="#FF99FF" Visible="False" 
                    NavigateUrl="~/UserLogin.aspx">You Have To Login Your Account</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblmeassage" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
    </table>
</asp:Content>

