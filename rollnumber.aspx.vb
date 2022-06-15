Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class rollnumber
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()


        If Session("user") <> "" Then

            Dim query_check As String
            query_check = "select rollno from roll where rollno='" + TextBox1.Text + "';"

            Dim sqlcom As New SqlCommand(query_check, sqlcon)
            Dim check As String = sqlcom.ExecuteScalar
            If check = TextBox1.Text Then
                lblmeassage.ForeColor = Drawing.Color.Red
                lblmeassage.Text = "Roll Number Already inserted.. "
            Else


                Dim query As String
                query = "insert into roll values('" + TextBox1.Text + "');"
                Dim com As New SqlCommand(query, sqlcon)
                com.ExecuteNonQuery()
                lblmeassage.ForeColor = Drawing.Color.Red
                lblmeassage.Text = "Sucessfully Uploded"
                TextBox1.Text = ""

            End If
        Else

            lblmeassage.Text = "At first Login"
        End If


       

       





        sqlcon.Close()
    End Sub
End Class
