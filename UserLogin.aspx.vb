Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Security.Cryptography
Partial Class UserLogin
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
    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click

        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()


        Dim username, password_database, password_provide As String


        password_provide = txtpassword.Text.Trim
        Dim password_user As String = GetMD5Value(password_provide)
        username = txtusername.Text
        If username <> "" Then
            Dim query As String
            query = "select Password from UserLogin where Username='" + username + "';"
            Dim sqlcom As New SqlCommand(query, sqlcon)
            password_database = sqlcom.ExecuteScalar

            If password_database = password_user Then
                Session("UserName") = username
                txtusername.Text = " "
                Response.Redirect("UserHome.aspx")
            Else
                lblMeassage.ForeColor = Drawing.Color.Red
                lblMeassage.Text = "Username Does Not Match"
            End If
        Else
            lblMeassage.ForeColor = Drawing.Color.Red
            lblMeassage.Text = "Please Provide Username "
        End If




        sqlcon.Close()

    End Sub
End Class
