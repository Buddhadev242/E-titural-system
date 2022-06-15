
Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Viewusersuggested
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("user") <> "" Then
            Panel3.Visible = True
            Panel2.Visible = False
            Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
            sqlcon.Open()
            Dim val As String = "NO"
            Dim dr As SqlDataReader
            Dim query = "Select * from suggested where validity='" + val + "' ;"
            Dim com As New SqlCommand(query, sqlcon)
            dr = com.ExecuteReader()

            gvquestion.DataSource = dr
            gvquestion.DataBind()


            sqlcon.Close()

        Else
            Panel2.Visible = True
            Panel3.Visible = False
            lblmeassage.Text = "At first Login."
            hllogin.Visible = True







        End If
    End Sub

  
    
  
    Protected Sub gvquestion_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvquestion.SelectedIndexChanged
        Session("sid") = gvquestion.SelectedValue.ToString
        Response.Redirect("grant.aspx")
    End Sub
End Class
