<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Viewusersuggested.aspx.vb" Inherits="Viewusersuggested" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 392px;
        }
        .style2
        {
            height: 79px;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 51px;
        }
        .style6
        {
            height: 27px;
        }
        .style7
        {
            height: 27px;
            width: 145px;
        }
        .style8
        {
            height: 137px;
            width: 145px;
        }
        .style9
        {
            height: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Panel ID="Panel2" runat="server" Height="36px" Visible="False">
                    <asp:Label ID="lblmeassage" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="hllogin" runat="server" ForeColor="#FF33CC" 
                        NavigateUrl="~/AdminLogin.aspx" Visible="False" Font-Size="Medium">Login</asp:HyperLink>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel3" runat="server" Height="282px" Visible="False">
                    <table class="style3">
                        <tr>
                            <td class="style4" colspan="2" 
                                style="color: #000000; font-size: x-large; background-color: #FF99FF;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -:View User Suggested Notes:-</td>
                        </tr>
                        <tr>
                            <td class="style8" style="color: #000000; background-color: #FF99FF">
                            </td>
                            <td class="style9" style="color: #000000; background-color: #FF99FF">
                                  <asp:GridView ID="gvquestion"  runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="sid" Width="412px" BackColor="White" BorderColor="#999999" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                                    Height="183px" >

                                    <AlternatingRowStyle BackColor="#DCDCDC" />

                         <Columns>
                       <asp:TemplateField HeaderText="Serial Id">
            <ItemTemplate>
           

                    <asp:Label ID ="lbl" runat="server" Text='<%#eval("sid") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>


                    <asp:TemplateField HeaderText=" Upload Type">
                    <ItemTemplate>
           <asp:Label ID ="lbl8" runat="server" Text='<%#eval("suggestedtype") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>

                          <asp:TemplateField HeaderText="Uploader Name">
                           <ItemTemplate>
                              <asp:Label ID ="lbl1" runat="server" Text='<%#eval("uploadername") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>

                    <asp:ButtonField CommandName="Select" HeaderText="View" Text="Select" />
                    </Columns>

                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />

                                </asp:GridView>
                                  <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" style="color: #000000; background-color: #FF99FF">
                                &nbsp;</td>
                            <td class="style6" style="color: #000000; background-color: #FF99FF">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

