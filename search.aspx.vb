Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserName") <> "" Then
            Panel3.Visible = True
            Panel2.Visible = False
            Label1.Text = "Provie eg. Book Name,Quesion Subject,Program Name"
        Else
            Panel2.Visible = True
            Panel3.Visible = False
            HyperLink2.Visible = True
            lbllogin.Text = "At first login then you have to Search..."

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()







        Dim dr As SqlDataReader
        If DropDownList1.SelectedValue.ToString = "Book" Then
           
            Dim query = "Select * from book where bname='" + txtsearch.Text + "';"
            Dim com As New SqlCommand(query, sqlcon)
            dr = com.ExecuteReader()

            gvbookk.DataSource = dr
            gvbookk.DataBind()



        End If
        If DropDownList1.SelectedValue.ToString = "Question" Then
           
            Dim query = "Select * from question where qsub='" + txtsearch.Text + "';"
            Dim com As New SqlCommand(query, sqlcon)
            dr = com.ExecuteReader()

            gvquestion.DataSource = dr
            gvquestion.DataBind()



        End If

      


        If DropDownList1.SelectedValue.ToString = "Program" Then
           
            Dim query = "Select * from program where pname='" + txtsearch.Text + "';"
            Dim com As New SqlCommand(query, sqlcon)
            dr = com.ExecuteReader()

            gvprogram.DataSource = dr
            gvprogram.DataBind()



        End If








        sqlcon.Close()
    End Sub

    Protected Sub gvprogram_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvprogram.SelectedIndexChanged
        Session("pid") = gvprogram.SelectedValue.ToString
        Response.Redirect("Details.aspx")
    End Sub

    Protected Sub gvquestion_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvquestion.SelectedIndexChanged
        Session("qid") = gvquestion.SelectedValue.ToString
        Response.Redirect("Details.aspx")
    End Sub

    Protected Sub gvbookk_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvbookk.SelectedIndexChanged
        Session("bid") = gvbookk.SelectedValue.ToString
        Response.Redirect("Details.aspx")
    End Sub
End Class
