Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class suggested
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserName") <> "" Then
            Panel2.Visible = True
            Panel3.Visible = False
        Else
            Panel3.Visible = True
            Panel2.Visible = False
            HyperLink2.Visible = True
            lbllogin.Text = "At first login then you have to upload your suggested things........."

        End If
    End Sub

    Protected Sub Upload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Upload.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()

        Dim path As String
        Dim image As String = System.IO.Path.GetExtension(FileUpload1.FileName)
        If image.ToLower = ".jpg" Or image.ToLower = ".jpeg" Or image.ToLower = ".bmp" Or image.ToLower = ".pdf" Or image.ToLower = ".doc" Then
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "/Image/" + FileUpload1.FileName)
            path = "~//Image//" + FileUpload1.FileName
            Session("filepath") = path
        Else
            Label2.Text = "please select jpg or doc or pdf file only.................."


        End If

        Dim val As String = "NO"

        Dim type, name, year, semester, upload_date As String

        type = DropDownList1.SelectedValue.ToString
        name = txtuploader.Text
        year = txtyear.Text
        semester = ddlsemester.SelectedValue.ToString
        upload_date = TextBox1.Text
        Dim query As String
        query = "insert into suggested values('" + type + "','" + name + "','" + year + "','" + semester + "','" + Session("filepath") + "','" + upload_date + "','" + val + "');"
        Dim com As New SqlCommand(query, sqlcon)
        com.ExecuteNonQuery()
        Label4.ForeColor = Drawing.Color.Red
        Label4.Text = "Succesfuly Uploded your Data......."
        TextBox1.Text = ""
        txtuploader.Text = ""
        txtyear.Text = ""


        sqlcon.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Calendar1.Visible = True

    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString
        Calendar1.Visible = False
    End Sub
End Class
