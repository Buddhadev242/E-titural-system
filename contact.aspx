<%@ Page Title="" Language="VB" MasterPageFile="~/user.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

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
        .style5
        {
            height: 39px;
        }
        .style6
        {
            height: 30px;
            width: 186px;
        }
        .style7
        {
            height: 30px;
        }
        .style8
        {
            height: 21px;
        }
        .style9
        {
            height: 21px;
            width: 155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style9" style="color: #6600CC; font-size: large">
                Contact Details:-</td>
            <td style="font-size: large">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2" style="font-size: x-large; color: #000099">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                PANSKURA BANAMALI COLLEGE</td>
        </tr>
        <tr>
            <td class="style5" colspan="2" style="font-size: x-large; color: #003300">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Department Of&nbsp;&nbsp; B.C.A
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2" style="font-size: large; color: #660066">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                KANAKPUR,WESTBENGAL<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                PH NO:-9734847087<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style8" style="font-size: large; color: #003399" colspan="2">
                Co-Operate Your FeedBack:-</td>
        </tr>
        <tr>
            <td class="style9" style="font-size: large; color: #003399">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" style="color: #003399; font-size: large;">
                Name</td>
            <td>
                <br />
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9" style="color: #003399; font-size: large;">
                Mail-Id</td>
            <td>
                <br />
                <asp:TextBox ID="txtMail_id" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtMail_id" ErrorMessage="Enter Vaild Email_id" 
                    ForeColor="Black" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9" style="color: #003399; font-size: large;">
                Feed Back Details</td>
            <td class="style6">
                <br />
                <asp:TextBox ID="txtdetails" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9" style="color: #000000">
                <asp:Label ID="Label1" runat="server" ForeColor="#3333FF"></asp:Label>
            </td>
            <td>
                <br />
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" ForeColor="#000099" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

