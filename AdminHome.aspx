<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AdminHome.aspx.vb" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 109px;
        }
        .style2
        {
            height: 191px;
        }
        .style3
        {
            width: 204px;
        }
        .style6
        {
            width: 204px;
            height: 19px;
        }
        .style7
        {
            height: 19px;
        }
    .style10
    {
        width: 204px;
        height: 23px;
    }
    .style11
    {
        height: 23px;
    }
    .style14
    {
        width: 204px;
        height: 24px;
    }
    .style15
    {
        height: 24px;
    }
    .style16
    {
        width: 204px;
        height: 27px;
    }
    .style17
    {
        height: 27px;
    }
        .style18
        {
            width: 204px;
            height: 28px;
        }
        .style19
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Panel ID="Panelhomeadmin" runat="server" Height="152px">
                    <table class="style1">
                        <tr>
                            <td class="style3" style="font-size: medium; color: #003366">
                                &nbsp;</td>
                            <td style="font-size: medium; color: #003366">
                                Hello&nbsp;
                                <asp:Label ID="lblname" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" style="font-size: medium; color: #003366">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Upload.aspx">Upload Study Material</asp:HyperLink>
                            </td>
                            <td style="font-size: medium; color: #003366" class="style11">
                                </td>
                        </tr>
                        <tr>
                            <td class="style14" style="font-size: medium; color: #003366">
                                <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="#000099" 
                                    NavigateUrl="~/rollnumber.aspx">Insert Student Roll Number</asp:HyperLink>
                            </td>
                            <td style="font-size: medium; color: #003366" class="style15">
                                </td>
                        </tr>
                        <tr>
                            <td class="style16" style="font-size: medium; color: #003366">
                                <asp:HyperLink ID="HyperLink4" runat="server" 
                                    NavigateUrl="~/Viewusersuggested.aspx"> Grant User Suggestion Material</asp:HyperLink>
                            </td>
                            <td class="style17" style="font-size: medium; color: #003366">
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:HyperLink ID="HyperLink7" runat="server" Font-Size="Medium" 
                                    ForeColor="#000066" NavigateUrl="~/viewfeed.aspx">View User Feedback</asp:HyperLink>
                            </td>
                            <td class="style7">
                                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/modify.aspx"> Modify Matrrial</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                                <asp:Button ID="btnlogout" runat="server" Text="Logout" />
                            </td>
                            <td class="style19">
                                </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel2" runat="server" ForeColor="#000066" Height="66px">
                    <br />
                    At First Login Then You Have Goto Home<br />
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AdminLogin.aspx">Click Here To Login</asp:HyperLink>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:Panel>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

