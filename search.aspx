<%@ Page Title="" Language="VB" MasterPageFile="~/user.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 677px;
        }
        .style2
        {
            height: 54px;
        }
        .style3
        {
            width: 100%;
            height: 690px;
        }
        .style5
        {
            height: 52px;
        }
        .style10
        {
            height: 39px;
        }
        .style13
        {
            height: 26px;
        }
        .style16
        {
            height: 158px;
            width: 205px;
        }
        .style17
        {
            height: 416px;
        }
        .style19
        {
            height: 70px;
        }
        .style21
        {
            width: 205px;
        }
        .style22
        {
            height: 158px;
        }
        .style23
        {
            height: 192px;
            width: 205px;
        }
        .style24
        {
            height: 192px;
        }
        .style25
        {
            width: 205px;
            height: 169px;
        }
        .style26
        {
            height: 169px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Panel ID="Panel2" runat="server" Height="35px" Visible="False">
                    <asp:Label ID="lbllogin" runat="server" ForeColor="#000099" Font-Size="Medium"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UserLogin.aspx" 
                        Visible="False" Font-Size="Medium">Login Account</asp:HyperLink>
                </asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Panel ID="Panel3" runat="server" Height="782px" Visible="False" 
                    Width="749px">
                    <table class="style3" color: #000000">
                        <tr>
                            <td class="style5" colspan="2" style="font-size: x-large; color: #000066">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -:Search Your Study Material&nbsp;:-</td>
                        </tr>
                        <tr>
                            <td class="style10" colspan="2" style="font-size: large; color: #000099">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Search Your Contain&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Select Any One</asp:ListItem>
                                    <asp:ListItem>Book</asp:ListItem>
                                    <asp:ListItem>Question</asp:ListItem>
                                    <asp:ListItem>Program</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style19" colspan="2" style="font-size: large; color: #000099">
                                Provide Search Value:-
                                <asp:TextBox ID="txtsearch" runat="server" Width="118px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtsearch" ErrorMessage="Provide Search Value" 
                                    ForeColor="#CC0000" Font-Size="Small"></asp:RequiredFieldValidator>
                                &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                &nbsp;
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" ForeColor="#660033" Text="Search" 
                                    Width="80px" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style21">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16">
                                </td>
                            <td class="style22">
                                <asp:GridView ID="gvquestion"  runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="qid" Width="399px" BackColor="White" BorderColor="#999999" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                                    Height="141px" >

                                    <AlternatingRowStyle BackColor="#DCDCDC" />

                         <Columns>
                       <asp:TemplateField HeaderText="Subject">
            <ItemTemplate>
           

                    <asp:Label ID ="lbl" runat="server" Text='<%#eval("qsub") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Year">
                    <ItemTemplate>
           <asp:Label ID ="lbl8" runat="server" Text='<%#eval("year") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>

                          <asp:TemplateField HeaderText="Question Type">
                           <ItemTemplate>
                              <asp:Label ID ="lbl1" runat="server" Text='<%#eval("qtype") %>'>
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
                        <tr>
                            <td class="style23">
                                </td>
                            <td class="style24">
                                <asp:GridView ID="gvprogram" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="pid" Width="396px" BackColor="White" BorderColor="#CCCCCC" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="155px" >


                          <Columns>
                       <asp:TemplateField HeaderText="Program Name">
            <ItemTemplate>
           

                    <asp:Label ID ="lbl" runat="server" Text='<%#eval("pname") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
           <asp:Label ID ="lbl8" runat="server" Text='<%#eval("pdescripction") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>

                         

                    <asp:ButtonField CommandName="Select" HeaderText="View" Text="Select" />
                    </Columns>

                          
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />

                          
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                </td>
                            <td class="style26">
                                <asp:GridView ID="gvbookk"  runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="bookid" Width="400px" BackColor="White" BorderColor="White" 
                                    BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
                                    GridLines="None" Height="153px">


                                 <Columns>
                       <asp:TemplateField HeaderText="Book Name">
            <ItemTemplate>
           


                    <asp:Label ID ="lbl" runat="server" Text='<%#eval("bname") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>


                    
                    

                    <asp:TemplateField HeaderText="Ediction">
            <ItemTemplate>
           


                    <asp:Label ID ="lbl8" runat="server" Text='<%#eval("bediction") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>

                          <asp:TemplateField HeaderText="Author">
            <ItemTemplate>
           


                    <asp:Label ID ="lbl1" runat="server" Text='<%#eval("aname") %>'>
                    </asp:Label>
                     </ItemTemplate>

                    </asp:TemplateField>

                    <asp:ButtonField CommandName="Select" HeaderText="View" Text="Select" />


                    </Columns>


                                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#33276A" />


                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

