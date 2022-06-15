Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminHome
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()
        If Session("user") <> "" Then
            Panelhomeadmin.Visible = True
            Panel2.Visible = False
            Dim query_name As String
            query_name = "select UserName from AdminLogin  where UserName='" + Session("user") + "';"
            Dim sqlcom_name As New SqlCommand(query_name, sqlcon)
            lblname.Text = sqlcom_name.ExecuteScalar
        Else
            Panelhomeadmin.Visible = False
            Panel2.Visible = True
        End If
       
        sqlcon.Close()
    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("user") = ""
        Response.Redirect("AdminLogin.aspx")
    End Sub
End Class
