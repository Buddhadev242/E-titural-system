Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Upload
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("user") <> "" Then

            Session("uploadername") = txtUploadername.Text
            Session("stream") = ddlstream.SelectedValue.ToString
            Session("Semester") = ddlsemester.SelectedValue.ToString
            Session("year") = ddlyear.SelectedValue.ToString
        Else

            lblmeassage.Text = "At First Login Then Upload Letter"
            hllogin.Visible = True




        End If


    End Sub

    Protected Sub ddlstream_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlstream.SelectedIndexChanged
        ddlsemester.Items.Clear()
        If ddlstream.SelectedValue = "BCA" Then
            ddlsemester.Visible = True
            ddlsemester.Items.Insert(0, New ListItem("1st Semester", "1st Semester"))
            ddlsemester.Items.Insert(1, New ListItem("2nd Semester", "2nd Semester"))
            ddlsemester.Items.Insert(2, New ListItem("3rd Semester", "3rd Semester"))
            ddlsemester.Items.Insert(3, New ListItem("4th Semester", "4th Semester"))
            ddlsemester.Items.Insert(4, New ListItem("5th Semester", "5th Semester"))
            ddlsemester.Items.Insert(5, New ListItem("6th Semester", "6th Semester"))

        End If

        If ddlstream.SelectedValue = "B.Sc" Then
            ddlsemester.Visible = True
            ddlsemester.Items.Insert(0, New ListItem("1st Year", "1st Year"))
            ddlsemester.Items.Insert(1, New ListItem("2nd Year", "2nd Year"))
            ddlsemester.Items.Insert(2, New ListItem("3rd Year", "3rd Year"))
        End If
    End Sub

    Protected Sub ddltype_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddltype.SelectedIndexChanged
        Session("type") = ddltype.SelectedValue
        If ddltype.SelectedValue = "Question" Then
           
            Response.Redirect("ques.aspx")
        End If

        If ddltype.SelectedValue = "Book" Then
          
            Response.Redirect("book.aspx")
           
        End If

        If ddltype.SelectedValue = "Programme" Then

            Response.Redirect("programm.aspx")

        End If
    End Sub

   

End Class
