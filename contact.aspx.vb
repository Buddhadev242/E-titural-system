Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class contact
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()

        Dim system_date As String
        system_date = System.DateTime.Now.ToString


        Dim name, mail, details As String
        name = txtName.Text
        mail = txtMail_id.Text
        details = txtdetails.Text

        Dim query As String
        query = "insert into feedback values ('" + system_date + "','" + name + "','" + mail + "','" + details + "');"
        Dim sqlcom As New SqlCommand(query, sqlcon)
        sqlcom.ExecuteNonQuery()

        Label1.Text = "Succesfully Send Your Feedback...."


        txtdetails.Text = ""
        txtMail_id.Text = ""
        txtName.Text = ""
        sqlcon.Close()


        sqlcon.Close()

    End Sub
End Class
