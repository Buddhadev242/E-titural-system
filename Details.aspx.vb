Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Details
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()



        If Session("pid") <> "" Then

            Dim query_step As String = "Select * from program where pid='" + Session("pid") + "';"
            Dim da_step As New SqlDataAdapter(query_step, sqlcon)
            Dim dt_step As New DataTable
            da_step.Fill(dt_step)

            If dt_step.Rows.Item(0).Item(0).ToString <> "" Then
                lbl1.Text = "Program Id  :-" + dt_step.Rows.Item(0).Item(0).ToString
            Else
                lbl1.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(1) <> "" Then
                lbl2.Text = "Uploader Name :-" + dt_step.Rows.Item(0).Item(1)
            Else
                lbl2.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(2) <> "" Then
                lbl3.Text = "Stream :-" + dt_step.Rows.Item(0).Item(2)
            Else
                lbl3.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(3) <> "" Then
                lbl4.Text = "Semester:-" + dt_step.Rows.Item(0).Item(3)
            Else
                lbl4.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(4) <> "" Then
                lbl5.Text = "Year:-" + dt_step.Rows.Item(0).Item(4)
            Else
                lbl5.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(5) <> "" Then
                lbl6.Text = " Program Name  :-" + dt_step.Rows.Item(0).Item(5)
            Else
                lbl6.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(6) <> "" Then
                lbl7.Text = "Program Descripction:-" + dt_step.Rows.Item(0).Item(6)
            Else
                lbl7.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(7) <> "" Then
                lbl8.Text = " Posted Date:-" + dt_step.Rows.Item(0).Item(7)
            Else
                lbl8.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(8) <> "" Then
                lbl9.Text = ""
            Else
                lbl9.Visible = False
            End If

           

            'Get Image path
            Dim path_meeting As String
            Dim query_img As String = "Select filepath from program where pid='" + Session("pid") + "';"
            Dim sqlcom_img As New SqlCommand(query_img, sqlcon)
            path_meeting = sqlcom_img.ExecuteScalar


            If path_meeting <> "NA" Then
                hld.Visible = True
                hld.NavigateUrl = path_meeting
            Else
                hld.Visible = False
            End If

            Session("pid") = ""
        End If



        If Session("qid") <> "" Then

            Dim query_step As String = "Select * from question where qid='" + Session("qid") + "';"
            Dim da_step As New SqlDataAdapter(query_step, sqlcon)
            Dim dt_step As New DataTable
            da_step.Fill(dt_step)

            If dt_step.Rows.Item(0).Item(0).ToString <> "" Then
                lbl1.Text = "Question Id  :-" + dt_step.Rows.Item(0).Item(0).ToString
            Else
                lbl1.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(1) <> "" Then
                lbl2.Text = "Uploader Name :-" + dt_step.Rows.Item(0).Item(1)
            Else
                lbl2.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(2) <> "" Then
                lbl3.Text = "Stream :-" + dt_step.Rows.Item(0).Item(2)
            Else
                lbl3.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(3) <> "" Then
                lbl4.Text = "Semester:-" + dt_step.Rows.Item(0).Item(3)
            Else
                lbl4.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(4) <> "" Then
                lbl5.Text = "Year:-" + dt_step.Rows.Item(0).Item(4)
            Else
                lbl5.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(5) <> "" Then
                lbl6.Text = " Question Subject  :-" + dt_step.Rows.Item(0).Item(5)
            Else
                lbl6.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(6) <> "" Then
                lbl7.Text = "Question Type:-" + dt_step.Rows.Item(0).Item(6)
            Else
                lbl7.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(7) <> "" Then
                lbl8.Text = " Posted Date:-" + dt_step.Rows.Item(0).Item(7)
            Else
                lbl8.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(8) <> "" Then
                lbl9.Text = ""
            Else
                lbl9.Visible = False
            End If



            'Get Image path
            Dim path_meeting As String
            Dim query_img As String = "Select filepath from question where qid='" + Session("qid") + "';"
            Dim sqlcom_img As New SqlCommand(query_img, sqlcon)
            path_meeting = sqlcom_img.ExecuteScalar


            If path_meeting <> "NA" Then
                hld.Visible = True
                hld.NavigateUrl = path_meeting
            Else
                hld.Visible = False
            End If

            Session("qid") = ""
        End If


        If Session("bid") <> "" Then

            Dim query_step As String = "Select * from book where bookid='" + Session("bid") + "';"
            Dim da_step As New SqlDataAdapter(query_step, sqlcon)
            Dim dt_step As New DataTable
            da_step.Fill(dt_step)

            If dt_step.Rows.Item(0).Item(0).ToString <> "" Then
                lbl1.Text = "Book Id  :-" + dt_step.Rows.Item(0).Item(0).ToString
            Else
                lbl1.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(1) <> "" Then
                lbl2.Text = "Uploader Name :-" + dt_step.Rows.Item(0).Item(1)
            Else
                lbl2.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(2) <> "" Then
                lbl3.Text = "Stream :-" + dt_step.Rows.Item(0).Item(2)
            Else
                lbl3.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(3) <> "" Then
                lbl4.Text = ""
            Else
                lbl4.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(4) <> "" Then
                lbl5.Text = ""
            Else
                lbl5.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(5) <> "" Then
                lbl6.Text = " Book Name  :-" + dt_step.Rows.Item(0).Item(5)
            Else
                lbl6.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(6) <> "" Then
                lbl7.Text = "Author Name:-" + dt_step.Rows.Item(0).Item(6)
            Else
                lbl7.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(7) <> "" Then
                lbl8.Text = "Book Ediction:-" + dt_step.Rows.Item(0).Item(7)
            Else
                lbl8.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(8) <> "" Then
                lbl9.Text = "Posted Date :-" + dt_step.Rows.Item(0).Item(8)
            Else
                lbl9.Visible = False
            End If
            If dt_step.Rows.Item(0).Item(9) <> "" Then
                lbl10.Text = ""
            Else
                lbl10.Visible = False
            End If


            'Get Image path
            Dim path_meeting As String
            Dim query_img As String = "Select filepath from book where bookid='" + Session("bid") + "';"
            Dim sqlcom_img As New SqlCommand(query_img, sqlcon)
            path_meeting = sqlcom_img.ExecuteScalar


            If path_meeting <> "NA" Then
                hld.Visible = True
                hld.NavigateUrl = path_meeting
            Else
                hld.Visible = False
            End If

            Session("bid") = ""
        End If






        If Session("sid") <> "" Then

            Dim query_step As String = "Select * from suggested where sid='" + Session("sid") + "';"
            Dim da_step As New SqlDataAdapter(query_step, sqlcon)
            Dim dt_step As New DataTable
            da_step.Fill(dt_step)

            If dt_step.Rows.Item(0).Item(0).ToString <> "" Then
                lbl1.Text = "Serial Number  :-" + dt_step.Rows.Item(0).Item(0).ToString
            Else
                lbl1.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(1) <> "" Then
                lbl2.Text = "Uploade Type :-" + dt_step.Rows.Item(0).Item(1)
            Else
                lbl2.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(2) <> "" Then
                lbl3.Text = "Year :-" + dt_step.Rows.Item(0).Item(2)
            Else
                lbl3.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(3) <> "" Then
                lbl4.Text = "Semester:-" + dt_step.Rows.Item(0).Item(3)
            Else
                lbl4.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(4) <> "" Then
                lbl5.Text = ""
            Else
                lbl5.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(5) <> "" Then
                lbl6.Text = " Upload Date :-" + dt_step.Rows.Item(0).Item(5)
            Else
                lbl6.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(6) <> "" Then
                lbl7.Text = ""
            Else
                lbl7.Visible = False
            End If

            


            'Get Image path
            Dim path_meeting As String
            Dim query_img As String = "Select filepath from suggested where sid='" + Session("sid") + "';"
            Dim sqlcom_img As New SqlCommand(query_img, sqlcon)
            path_meeting = sqlcom_img.ExecuteScalar


            If path_meeting <> "NA" Then
                hld.Visible = True
                hld.NavigateUrl = path_meeting
            Else
                hld.Visible = False
            End If

            Session("sid") = ""
        End If








        sqlcon.Close()

    End Sub
End Class
