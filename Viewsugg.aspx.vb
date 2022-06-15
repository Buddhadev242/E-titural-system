Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Viewsugg
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserName") <> "" Then
            Panel3.Visible = True
            Panel2.Visible = False


            Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
            sqlcon.Open()
            Dim val As String = "YES"
            Dim dr As SqlDataReader
            Dim query = "Select * from suggested where validity='" + val + "' ;"
            Dim com As New SqlCommand(query, sqlcon)
            dr = com.ExecuteReader()

            gvquestion.DataSource = dr
            gvquestion.DataBind()




        Else
            Panel2.Visible = True
            Panel3.Visible = False
            HyperLink2.Visible = True
            lbllogin.Text = "At first login then you have to upload your suggested things........."

        End If
    End Sub

    Protected Sub gvquestion_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvquestion.SelectedIndexChanged
        Session("sid") = gvquestion.SelectedValue.ToString
        Response.Redirect("Details.aspx")
    End Sub
End Class
