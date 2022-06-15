Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class viewfeed
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("user") <> "" Then

            Panel2.Visible = False
            Panel3.Visible = True

            Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
            sqlcon.Open()

            Dim dr As SqlDataReader
            Dim query = "Select * from feedback;"
            Dim com As New SqlCommand(query, sqlcon)
            dr = com.ExecuteReader()

            GridView1.DataSource = dr
            GridView1.DataBind()


            sqlcon.Close()


        Else
            Panel2.Visible = True
            Panel3.Visible = False
            Label1.Text = "At First Login Your Account....."


        End If
    End Sub
End Class
