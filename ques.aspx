<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ques.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 129px;
        }
        .style3
        {
            width: 129px;
            height: 25px;
        }
        .style4
        {
            height: 25px;
        }
        .style5
        {
            width: 129px;
            height: 22px;
        }
        .style6
        {
            height: 22px;
        }
        .style7
        {
            width: 129px;
            height: 28px;
        }
        .style8
        {
            height: 28px;
        }
        .style9
        {
            width: 129px;
            height: 31px;
        }
        .style10
        {
            height: 31px;
        }
        .style11
        {
            width: 129px;
            height: 43px;
        }
        .style12
        {
            height: 43px;
        }
        .style13
        {
            width: 129px;
            height: 21px;
        }
        .style14
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="style1" style="color: #000000">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="font-size: x-large; color: #3366CC">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                -:Upload Question:-</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14" style="font-size: x-large; color: #3366CC">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">
                                Question Subject</td>
            <td class="style4" style="font-size: medium">
                                <asp:TextBox ID="txtQuetionSubject" runat="server"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td class="style5" style="font-size: medium">
                                Question Type</td>
            <td class="style6" style="font-size: medium">
                                <asp:DropDownList ID="ddlqtype" runat="server">
                                    <asp:ListItem>Theory</asp:ListItem>
                                    <asp:ListItem>Practical</asp:ListItem>
                                </asp:DropDownList>
                            </td>
        </tr>
        <tr>
            <td class="style7" style="font-size: medium">
                                Question Code</td>
            <td class="style8" style="font-size: medium">
                                <asp:TextBox ID="txtQuestioncode" runat="server"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td class="style9" style="font-size: medium">
                Upload Question File</td>
            <td class="style10" style="font-size: medium">
                <asp:FileUpload ID="flphoto" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblattach" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11" style="font-size: medium">
                Provide Posted Date</td>
            <td class="style12" style="font-size: medium">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Provide" />
                <br />
                <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style13">
                </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <input id="Button2" type="button" value="Preview"   
                
                    OnClick="window.open('view.aspx','My Window','height=600,width=600,top=400,left=800')" /></td>
        </tr>
    </table>
</asp:Content>

