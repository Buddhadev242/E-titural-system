<%@ Page Title="" Language="VB" MasterPageFile="~/user.master" AutoEventWireup="false" CodeFile="ForgetPassword.aspx.vb" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 169px;
        }
        .style2
        {
            height: 65px;
        }
        .style3
        {
            height: 208px;
        }
        .style4
        {
            width: 292px;
        }
        .style5
        {
            height: 39px;
        }
        .style6
        {
            width: 100%;
        }
        .style8
        {
            width: 278px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Panel ID="PanelQuestion" runat="server" Height="183px">
                    <table class="style1">
                        <tr>
                            <td class="style4" 
                                style="color: #3399FF; font-size: large; background-color: #CCCCCC;">
                                &nbsp;</td>
                            <td style="color: #3399FF; font-size: large; background-color: #CCCCCC;">
                                Password Recovery</td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="color: #FF33CC; font-size: medium; background-color: #CCCCCC;">
                                Security Question</td>
                            <td style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                &nbsp;</td>
                            <td style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                I. What is your hoby ?</td>
                            <td style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                <asp:TextBox ID="txtHoby" runat="server" CssClass="style11" Height="22px" 
                                    Width="150px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="txtHoby" CssClass="style20" 
                                    ErrorMessage="Please insert your hoby." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                II. What is your favorite game ?</td>
                            <td style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                <asp:TextBox ID="txtGame" runat="server" CssClass="style11" Height="20px" 
                                    Width="150px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="txtGame" CssClass="style20" 
                                    ErrorMessage="Please insert your favorite game." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                <asp:Label ID="lblError" runat="server" CssClass="style12" ForeColor="Red"></asp:Label>
                            </td>
                            <td style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                &nbsp;</td>
                            <td style="color: #000000; font-size: medium; background-color: #CCCCCC;">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Panel ID="Panelsetup" runat="server" Height="192px" Visible="False">
                    <table class="style6">
                        <tr>
                            <td class="style8" 
                                style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                &nbsp;</td>
                            <td style="font-size: large; color: #6699FF; background-color: #CCCCCC">
                                Create Password</td>
                        </tr>
                        <tr>
                            <td class="style8" 
                                style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                Enter Username</td>
                            <td style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                <asp:TextBox ID="txtUser" runat="server" Height="18px" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtUser" CssClass="style20" 
                                    ErrorMessage="Please insert your username." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" 
                                style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                <span class="style23">New Password</span></td>
                            <td style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                <asp:TextBox ID="txtPassword" runat="server" Height="16px" TextMode="Password" 
                                    Width="150px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtPassword" CssClass="style20" 
                                    ErrorMessage="Please insert your password." ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" 
                                style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                <span class="style24">Confirm Password</span></td>
                            <td style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                <asp:TextBox ID="txtConfirm" runat="server" CssClass="style11" Height="21px" 
                                    TextMode="Password" Width="150px"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtPassword" ControlToValidate="txtConfirm" 
                                    CssClass="style20" ErrorMessage="Check your password" ForeColor="Red"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" 
                                style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                <asp:Label ID="lblMessage" runat="server" CssClass="style12" ForeColor="Red"></asp:Label>
                            </td>
                            <td style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style8" 
                                style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                &nbsp;</td>
                            <td style="font-size: medium; color: #000000; background-color: #CCCCCC">
                                <asp:Button ID="btnupdate" runat="server" Text="Update" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
        </tr>
    </table>
</asp:Content>

