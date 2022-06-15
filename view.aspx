<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="view.aspx.vb" Inherits="view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 68px;
        }
        .style2
        {
            height: 60px;
            width: 240px;
        }
        .style5
        {
            height: 28px;
        }
        .style6
        {
            height: 24px;
        }
        .style7
        {
            height: 165px;
        }
        .style9
        {
            height: 116px;
        }
        .style10
        {
            height: 164px;
        }
        .style12
        {
            height: 28px;
            width: 275px;
        }
        .style14
        {
            width: 274px;
        }
        .style16
        {
            height: 24px;
            width: 274px;
        }
        .style18
        {
            height: 28px;
            width: 273px;
        }
        .style19
        {
            height: 24px;
            width: 273px;
        }
        .style20
        {
            width: 239px;
        }
        .style21
        {
            height: 28px;
            width: 239px;
        }
        .style22
        {
            height: 24px;
            width: 272px;
        }
        .style24
        {
            height: 24px;
            width: 268px;
        }
        .style25
        {
            height: 24px;
            width: 239px;
        }
        .style26
        {
            height: 41px;
        }
        .style27
        {
            height: 10px;
            width: 275px;
        }
        .style28
        {
            height: 41px;
            width: 240px;
        }
        .style29
        {
            height: 10px;
            width: 240px;
        }
        .style30
        {
            height: 116px;
            width: 240px;
        }
        .style31
        {
            height: 164px;
            width: 240px;
        }
        .style32
        {
            height: 165px;
            width: 240px;
        }
        .style33
        {
            width: 240px;
        }
        .style34
        {
            height: 28px;
            width: 240px;
        }
        .style35
        {
            height: 24px;
            width: 240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="color: #000000; height: 434px;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="font-size: x-large; color: #000099;">
                -:Preview Your Submitted Data:-</td>
        </tr>
        <tr>
            <td class="style28" style="font-size: medium; color: #660066;">
                Uploader Name</td>
            <td style="font-size: medium; color: #660066;" class="style26">
                <asp:Label ID="lbluploadername" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style33" style="font-size: medium; color: #660066;">
                Stream</td>
            <td class="style18" style="font-size: medium; color: #660066;">
                <asp:Label ID="lblstream" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style34" style="font-size: medium; color: #660066;">
                Semester</td>
            <td class="style16" style="font-size: medium; color: #660066;">
                <asp:Label ID="lblsemester" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style35" style="font-size: medium; color: #660066;">
                Year </td>
            <td class="style14" style="font-size: medium; color: #660066;">
                <asp:Label ID="lblyear" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style33" style="font-size: medium; color: #660066;">
                Upload Type</td>
            <td class="style12" style="font-size: medium; color: #660066;">
                <asp:Label ID="lbltype" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style29" style="font-size: medium; color: #660066;">
                </td>
            <td class="style27" style="font-size: medium; color: #660066;">
            </td>
        </tr>
        <tr>
            <td class="style30" style="font-size: medium">
                </td>
            <td class="style9" style="font-size: medium">
                <asp:Panel ID="Panelquestion" runat="server" Height="85px" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style19" style="color: #000099">
                                Question Subject</td>
                            <td style="color: #000099">
                                <asp:Label ID="lblqsubject" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style22" style="color: #000099">
                                Question Code</td>
                            <td class="style14" style="color: #000099">
                                <asp:Label ID="lblqcode" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style22" style="color: #000099">
                                Question Type</td>
                            <td class="style14" style="color: #000099">
                                <asp:Label ID="lblqtype" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style22" style="color: #000099">
                                Posted Date</td>
                            <td class="style14" style="color: #000099">
                                <asp:Label ID="lblqpo" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style31" style="font-size: medium">
                </td>
            <td class="style10" style="font-size: medium">
                <asp:Panel ID="Panelbook" runat="server" Height="112px" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style20" style="color: #003300">
                                Book Name</td>
                            <td style="color: #003300">
                                <asp:Label ID="lblbname" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21" style="color: #003300">
                                Auther Name</td>
                            <td class="style5" style="color: #003300">
                                <asp:Label ID="lblbauthername" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25" style="color: #003300">
                                Book Ediction</td>
                            <td class="style6" style="color: #003300">
                                <asp:Label ID="lblbediction" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25" style="color: #003300">
                                Book Posted Date</td>
                            <td class="style6" style="color: #003300">
                                <asp:Label ID="lblbookposted" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style32" style="font-size: medium">
                </td>
            <td class="style7" style="font-size: medium">
                <asp:Panel ID="Panelprogram" runat="server" Height="93px" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style24" style="color: #000099">
                                Programme Name</td>
                            <td style="color: #000099">
                                <asp:Label ID="lblpname" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style24" style="color: #000099">
                                Programme Description</td>
                            <td style="color: #000099">
                                <asp:Label ID="lblpdescription" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style24" style="color: #000099">
                                Program Posted Date</td>
                            <td style="color: #000099">
                                <asp:Label ID="lblposteddate" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2" style="font-size: medium">
                Your Attachment File</td>
            <td style="font-size: medium">
                <asp:HyperLink ID="hlattach" runat="server" ForeColor="#660033">See Your Attachment File</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblmeassage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" ForeColor="#339933" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" ForeColor="Red" Text="Close" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

