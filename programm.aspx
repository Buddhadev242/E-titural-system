<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="programm.aspx.vb" Inherits="programm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 146px;
        }
        .style3
        {
            width: 146px;
            height: 18px;
        }
        .style4
        {
            height: 18px;
        }
        .style7
        {
            width: 146px;
            height: 22px;
        }
        .style8
        {
            height: 22px;
        }
        .style9
        {
            width: 146px;
            height: 25px;
        }
        .style10
        {
            height: 25px;
        }
        .style11
        {
            width: 146px;
            height: 34px;
        }
        .style12
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table class="style1" style="color: #000000">
        <tr>
            <td class="style9">
                </td>
            <td style="font-size: large; color: #003399" class="style10">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                -:Upload Program:-</td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">
                                Program Name</td>
            <td class="style4" style="font-size: medium">
                                <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                                Program&nbsp; Description</td>
            <td style="font-size: medium">
                                <asp:TextBox ID="txtdescription" runat="server" 
                    TextMode="MultiLine"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td class="style11" style="font-size: medium">
                Program File Upload</td>
            <td class="style12" style="font-size: medium">
                <asp:FileUpload ID="flphoto" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblattach" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7" style="font-size: medium">
                Provide Posted Date</td>
            <td class="style8" style="font-size: medium">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
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

