<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewfeed.aspx.vb" Inherits="viewfeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 189px;
        }
        .style2
        {
            height: 29px;
        }
        .style3
        {
            height: 304px;
        }
        .style4
        {
            width: 129px;
        }
        .style5
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Panel ID="Panel2" runat="server" Height="52px" Visible="False">
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AdminLogin.aspx">Click here to login</asp:HyperLink>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Panel ID="Panel3" runat="server" Height="208px" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style5" colspan="2" style="font-size: x-large; color: #000066">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -:View User Feedback Meassage:-</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Name" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                    BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="None" 
                                    Height="180px" Width="400px" >

                                
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />

                                
                         <Columns>
                       <asp:TemplateField HeaderText="Posted Date">
            <ItemTemplate>
           

                    <asp:Label ID ="lbl" runat="server" Text='<%#eval("Feed_date") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>


                    <asp:TemplateField HeaderText=" Upload Name">
                    <ItemTemplate>
           <asp:Label ID ="lbl8" runat="server" Text='<%#eval("Name") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>

                          <asp:TemplateField HeaderText="Mail Id">
                           <ItemTemplate>
                              <asp:Label ID ="lbl1" runat="server" Text='<%#eval("Mailid") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>





                     <asp:TemplateField HeaderText="Meassage">
                           <ItemTemplate>
                              <asp:Label ID ="lbl1" runat="server" Text='<%#eval("Details") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>



                    </Columns>


                                    <FooterStyle BackColor="Tan" />
                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                        HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />


                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

