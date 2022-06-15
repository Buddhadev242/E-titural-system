Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Security.Cryptography
Partial Class userHome
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()


        If Session("UserName") <> "" Then
            Panel2.Visible = True
            Panel3.Visible = False

            Dim imagepath, name As String
            Dim query As String
            query = "select Path from Registration where Username='" + Session("UserName") + "';"
            Dim sqlcom As New SqlCommand(query, sqlcon)
            imagepath = sqlcom.ExecuteScalar
            imgUser.ImageUrl = imagepath
            Dim query_name As String
            query_name = "select Name from Registration where Username='" + Session("UserName") + "';"
            Dim sqlcom_name As New SqlCommand(query_name, sqlcon)
            name = sqlcom_name.ExecuteScalar

            lblname.Text = name
        Else
            Panel2.Visible = False
            Panel3.Visible = True
        End If



    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("UserName") = ""
        Response.Redirect("UserLogin.aspx")
    End Sub
End Class
