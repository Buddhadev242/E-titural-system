<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="book.aspx.vb" Inherits="book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 169px;
        }
        .style3
        {
            width: 169px;
            height: 25px;
        }
        .style4
        {
            height: 25px;
        }
        .style5
        {
            width: 169px;
            height: 30px;
        }
        .style6
        {
            height: 30px;
        }
        .style7
        {
            width: 169px;
            height: 35px;
        }
        .style8
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table class="style1" style="color: #000000">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="font-size: x-large; color: #003399">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                -:Upload Book:-</td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">
                                Book Name</td>
            <td class="style4" style="font-size: medium">
                                <asp:TextBox ID="txtbname" runat="server"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">
                                Auther Name</td>
            <td class="style4" style="font-size: medium">
                                <asp:TextBox ID="txtauthername" runat="server"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td class="style5" style="font-size: medium">
                                Book Ediction</td>
            <td class="style6" style="font-size: medium">
                                <asp:TextBox ID="txtediction" runat="server"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td class="style7" style="font-size: medium">
                Upload Question File</td>
            <td class="style8" style="font-size: medium">
                <asp:FileUpload ID="flphoto" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblattach" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Provide Posted Date</td>
            <td style="font-size: medium">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Provide" />
                <br />
                <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
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
                <input id="Button2" type="button" value="Preview"   
                
                    OnClick="window.open('view.aspx','My Window','height=600,width=600,top=400,left=800')" /></td>
        </tr>
    </table>
</asp:Content>

