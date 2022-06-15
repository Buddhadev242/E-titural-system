Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class programm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()


        Dim path As String
        Dim image As String = System.IO.Path.GetExtension(flphoto.FileName)
        If image.ToLower = ".jpg" Or image.ToLower = ".jpeg" Or image.ToLower = ".bmp" Or image.ToLower = ".pdf" Or image.ToLower = ".doc" Then
            flphoto.PostedFile.SaveAs(Server.MapPath(".") + "/Image/" + flphoto.FileName)
            path = "~//Image//" + flphoto.FileName
            Session("filepath") = path
        Else
            lblattach.Text = "please select jpg or doc or pdf file only.................."


        End If





        Session("programname") = txtpname.Text

        Session("description") = txtdescription.Text










        sqlcon.Close()
    End Sub

   

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Calendar1.Visible = True
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString
        Session("programposteddate") = TextBox1.Text

        Calendar1.Visible = False

    End Sub
End Class
