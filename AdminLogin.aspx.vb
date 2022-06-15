Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminLogin
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()

        Dim username, password, database_password As String
        username = txtusername.Text
        password = txtpassword.Text
        If username <> "" Then
            Dim query As String
            query = "select Password from AdminLogin where UserName='" + username + "';"
            Dim sqlcom As New SqlCommand(query, sqlcon)
            database_password = sqlcom.ExecuteScalar
            If password = database_password Then
                Session("user") = username
                Response.Redirect("AdminHome.aspx")
            Else

                lblMeassage.Text = "Username And Password Does Not Same"
            End If

        Else
            lblMeassage.Text = "Please Provide UserName & Password"
        End If
       
        sqlcon.Close()

    End Sub

    
End Class
