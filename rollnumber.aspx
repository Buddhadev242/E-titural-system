<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="rollnumber.aspx.vb" Inherits="rollnumber" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
        width: 233px;
    }
    .style4
    {
        width: 233px;
        height: 27px;
    }
    .style5
    {
        height: 27px;
    }
    .style6
    {
        height: 29px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1"  style="color: #000000;">
        <tr>
            <td align="center" class="style6" colspan="2" 
                style="font-size: x-large; color: #000000">
                -:Insert Student Roll Numbe:-</td>
        </tr>
        <tr>
            <td class="style4" style="font-size: large">
                Inser Roll Number</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Provide Number" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" Text="Upload" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblmeassage" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

