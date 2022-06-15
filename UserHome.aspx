<%@ Page Title="" Language="VB" MasterPageFile="~/user.master" AutoEventWireup="false" CodeFile="userHome.aspx.vb" Inherits="userHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 151px;
        }
        .style2
        {
            height: 233px;
        }
        .style3
        {
            height: 100px;
        }
        .style4
        {
            width: 100%;
            height: 151px;
        }
        .style6
        {
            width: 217px;
        }
        .style7
        {
            width: 217px;
            height: 29px;
        }
        .style8
        {
            height: 29px;
        }
        .style13
        {
            width: 217px;
            height: 21px;
        }
        .style14
        {
            height: 21px;
        }
        .style15
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Panel ID="Panel2" runat="server" Height="195px">
                    <table class="style4" style="font-size: medium; color: #000000">
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                Hello-<asp:Label ID="lblname" runat="server" ForeColor="#660066"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                <asp:Image ID="imgUser" runat="server" Height="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/suggested.aspx">Upload Study Material</asp:HyperLink>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/search.aspx">View &amp; Search</asp:HyperLink>
                            </td>
                            <td class="style14">
                                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Image/ShowPdf.pdf">Download BCA Syallbus</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Viewsugg.aspx">View User Suggested Notes</asp:HyperLink>
                            </td>
                            <td class="style8">
                                <asp:Button ID="btnlogout" runat="server" Text="logout" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Panel ID="Panel3" runat="server" ForeColor="#000066" Height="97px">
                    At First Login Then You Have Goto Home<br />
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/UserLogin.aspx">Click Here To Login</asp:HyperLink>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

