Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Security.Cryptography
Partial Class ForgetPassword
    Inherits System.Web.UI.Page
    Public Function GetMD5Value(ByVal input As String) As String
        Dim md5Value As String = ""
        Dim md5Hasher As New MD5CryptoServiceProvider
        Dim hashedDataBytes As Byte()
        Dim encoder As New UTF8Encoding
        hashedDataBytes = md5Hasher.ComputeHash(encoder.GetBytes(input))
        Dim b As Byte
        For Each b In hashedDataBytes
            md5Value = md5Value & b
        Next
        Return md5Value
    End Function

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()


        
        Dim query_sel As String = "select Username from UserLogin where Hoby='" + txtHoby.Text + "' and Favourte='" + txtGame.Text + "';"
        Dim com_sel As New SqlCommand(query_sel, sqlcon)
        Dim user As String = com_sel.ExecuteScalar
        If user <> "" Then
            Session("user") = user
            Panelsetup.Visible = True
            PanelQuestion.Visible = False
        Else
            lblError.Text = "You are not authenticate."
        End If

        sqlcon.Close()

    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click

        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()
        Dim password_provide As String
        password_provide = txtPassword.Text.Trim
        Dim password_user As String = GetMD5Value(password_provide)

        If txtUser.Text = Session("user") Then
            Dim query_pass As String = "update UserLogin set Password='" + password_user + "' where Username='" + txtUser.Text + "';"
            Dim com_pass As New SqlCommand(query_pass, sqlcon)
            com_pass.ExecuteNonQuery()

            Response.Redirect("UserLogin.aspx")
            sqlcon.Close()
        Else
            lblMessage.Text = "Your username is not match."
        End If
    End Sub
End Class
