<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="modify.aspx.vb" Inherits="modify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 29px;
        height: 178px;
    }
    .style3
    {
        width: 29px;
        height: 32px;
    }
    .style4
    {
        height: 32px;
    }
    .style5
    {
        width: 29px;
        height: 183px;
    }
    .style6
    {
        height: 183px;
    }
    .style7
    {
        width: 29px;
        height: 191px;
    }
    .style8
    {
        height: 191px;
    }
    .style9
    {
        height: 178px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3">
        </td>
        <td class="style4" style="font-size: x-large; color: #000066">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            -:Modify Data:-</td>
    </tr>
    <tr>
        <td class="style5" style="font-size: large">
        </td>
        <td class="style6" style="font-size: medium">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="bookid" DataSourceID="SqlDataSource1" 
                GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="bookid" HeaderText="Bookid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="bookid" />
                    <asp:BoundField DataField="upname" HeaderText="Uploader Name" 
                        SortExpression="upname" />
                    <asp:BoundField DataField="stream" HeaderText="Stream" 
                        SortExpression="stream" />
                    <asp:BoundField DataField="semester" HeaderText="Semester" 
                        SortExpression="semester" />
                    <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                    <asp:BoundField DataField="bname" HeaderText="Book Name" 
                        SortExpression="bname" />
                    <asp:BoundField DataField="aname" HeaderText="Author Name" 
                        SortExpression="aname" />
                    <asp:BoundField DataField="bediction" HeaderText="Ediction" 
                        SortExpression="bediction" />
                    <asp:BoundField DataField="posteddate" HeaderText="posteddate" 
                        SortExpression="posteddate" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [book] WHERE [bookid] = @bookid" 
                InsertCommand="INSERT INTO [book] ([upname], [stream], [semester], [year], [bname], [aname], [bediction], [posteddate]) VALUES (@upname, @stream, @semester, @year, @bname, @aname, @bediction, @posteddate)" 
                SelectCommand="SELECT [bookid], [upname], [stream], [semester], [year], [bname], [aname], [bediction], [posteddate] FROM [book]" 
                UpdateCommand="UPDATE [book] SET [upname] = @upname, [stream] = @stream, [semester] = @semester, [year] = @year, [bname] = @bname, [aname] = @aname, [bediction] = @bediction, [posteddate] = @posteddate WHERE [bookid] = @bookid">
                <DeleteParameters>
                    <asp:Parameter Name="bookid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="upname" Type="String" />
                    <asp:Parameter Name="stream" Type="String" />
                    <asp:Parameter Name="semester" Type="String" />
                    <asp:Parameter Name="year" Type="String" />
                    <asp:Parameter Name="bname" Type="String" />
                    <asp:Parameter Name="aname" Type="String" />
                    <asp:Parameter Name="bediction" Type="String" />
                    <asp:Parameter Name="posteddate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="upname" Type="String" />
                    <asp:Parameter Name="stream" Type="String" />
                    <asp:Parameter Name="semester" Type="String" />
                    <asp:Parameter Name="year" Type="String" />
                    <asp:Parameter Name="bname" Type="String" />
                    <asp:Parameter Name="aname" Type="String" />
                    <asp:Parameter Name="bediction" Type="String" />
                    <asp:Parameter Name="posteddate" Type="String" />
                    <asp:Parameter Name="bookid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style7" style="font-size: large">
        </td>
        <td class="style8" style="font-size: medium">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="qid" DataSourceID="SqlDataSource2" 
                GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="qid" HeaderText="Question Id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="qid" />
                    <asp:BoundField DataField="upname" HeaderText="Uploader Name" 
                        SortExpression="upname" />
                    <asp:BoundField DataField="stream" HeaderText="Stream" 
                        SortExpression="stream" />
                    <asp:BoundField DataField="semester" HeaderText="Semester" 
                        SortExpression="semester" />
                    <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                    <asp:BoundField DataField="qsub" HeaderText="Question Subject" 
                        SortExpression="qsub" />
                    <asp:BoundField DataField="qcode" HeaderText="Question Code" 
                        SortExpression="qcode" />
                    <asp:BoundField DataField="qtype" HeaderText="Question Type" 
                        SortExpression="qtype" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [question] WHERE [qid] = @qid" 
                InsertCommand="INSERT INTO [question] ([upname], [stream], [semester], [year], [qsub], [qcode], [qtype]) VALUES (@upname, @stream, @semester, @year, @qsub, @qcode, @qtype)" 
                SelectCommand="SELECT [qid], [upname], [stream], [semester], [year], [qsub], [qcode], [qtype] FROM [question]" 
                UpdateCommand="UPDATE [question] SET [upname] = @upname, [stream] = @stream, [semester] = @semester, [year] = @year, [qsub] = @qsub, [qcode] = @qcode, [qtype] = @qtype WHERE [qid] = @qid">
                <DeleteParameters>
                    <asp:Parameter Name="qid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="upname" Type="String" />
                    <asp:Parameter Name="stream" Type="String" />
                    <asp:Parameter Name="semester" Type="String" />
                    <asp:Parameter Name="year" Type="String" />
                    <asp:Parameter Name="qsub" Type="String" />
                    <asp:Parameter Name="qcode" Type="String" />
                    <asp:Parameter Name="qtype" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="upname" Type="String" />
                    <asp:Parameter Name="stream" Type="String" />
                    <asp:Parameter Name="semester" Type="String" />
                    <asp:Parameter Name="year" Type="String" />
                    <asp:Parameter Name="qsub" Type="String" />
                    <asp:Parameter Name="qcode" Type="String" />
                    <asp:Parameter Name="qtype" Type="String" />
                    <asp:Parameter Name="qid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style2" style="font-size: large">
        </td>
        <td class="style9" style="font-size: large">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="pid" DataSourceID="SqlDataSource3" 
                GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="pid" HeaderText="Program Id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="pid" />
                    <asp:BoundField DataField="upname" HeaderText="Uploader Name" 
                        SortExpression="upname" />
                    <asp:BoundField DataField="stream" HeaderText="Stream" 
                        SortExpression="stream" />
                    <asp:BoundField DataField="semester" HeaderText="semester" 
                        SortExpression="semester" />
                    <asp:BoundField DataField="pname" HeaderText="Program Name" 
                        SortExpression="pname" />
                    <asp:BoundField DataField="pdescripction" HeaderText="Descripction" 
                        SortExpression="pdescripction" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [program] WHERE [pid] = @pid" 
                InsertCommand="INSERT INTO [program] ([upname], [stream], [semester], [pname], [pdescripction]) VALUES (@upname, @stream, @semester, @pname, @pdescripction)" 
                SelectCommand="SELECT [pid], [upname], [stream], [semester], [pname], [pdescripction] FROM [program]" 
                UpdateCommand="UPDATE [program] SET [upname] = @upname, [stream] = @stream, [semester] = @semester, [pname] = @pname, [pdescripction] = @pdescripction WHERE [pid] = @pid">
                <DeleteParameters>
                    <asp:Parameter Name="pid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="upname" Type="String" />
                    <asp:Parameter Name="stream" Type="String" />
                    <asp:Parameter Name="semester" Type="String" />
                    <asp:Parameter Name="pname" Type="String" />
                    <asp:Parameter Name="pdescripction" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="upname" Type="String" />
                    <asp:Parameter Name="stream" Type="String" />
                    <asp:Parameter Name="semester" Type="String" />
                    <asp:Parameter Name="pname" Type="String" />
                    <asp:Parameter Name="pdescripction" Type="String" />
                    <asp:Parameter Name="pid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

