<%@ Page Title="" Language="VB" MasterPageFile="~/user.master" AutoEventWireup="false" CodeFile="Viewsugg.aspx.vb" Inherits="Viewsugg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 305px;
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            height: 139px;
        }
        .style4
        {
            width: 100%;
            height: 218px;
        }
        .style5
        {
            width: 153px;
            height: 171px;
        }
        .style6
        {
            height: 40px;
        }
        .style7
        {
            height: 171px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Panel ID="Panel2" runat="server" Height="33px">
                    &nbsp;<asp:Label ID="lbllogin" runat="server" ForeColor="#000099"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UserLogin.aspx" 
                        Visible="False">Login Account</asp:HyperLink>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Panel ID="Panel3" runat="server" Height="246px">
                    <table class="style4">
                        <tr>
                            <td class="style6" colspan="2" style="font-size: x-large; color: #000066">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -:View User Suggested:-</td>
                        </tr>
                        <tr>
                            <td class="style5">
                            </td>
                            <td class="style7">
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
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

