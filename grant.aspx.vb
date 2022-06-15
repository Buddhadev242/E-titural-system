Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class grant
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()



        If Session("sid") <> "" Then

            Dim query_step As String = "Select * from suggested where sid='" + Session("sid") + "';"
            Dim da_step As New SqlDataAdapter(query_step, sqlcon)
            Dim dt_step As New DataTable
            da_step.Fill(dt_step)

            If dt_step.Rows.Item(0).Item(0).ToString <> "" Then
                lbl1.Text = "Serial Id  :-" + dt_step.Rows.Item(0).Item(0).ToString
            Else
                lbl1.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(1) <> "" Then
                lbl2.Text = "Uploade Type :-" + dt_step.Rows.Item(0).Item(1)
            Else
                lbl2.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(2) <> "" Then
                lbl3.Text = "Uploder Name :-" + dt_step.Rows.Item(0).Item(2)
            Else
                lbl3.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(3) <> "" Then
                lbl4.Text = " Year:-" + dt_step.Rows.Item(0).Item(3)
            Else
                lbl4.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(4) <> "" Then
                lbl5.Text = "Semester:-" + dt_step.Rows.Item(0).Item(4)
            Else
                lbl5.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(5) <> "" Then
                lbl6.Text = " "
            Else
                lbl6.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(6) <> "" Then
                lbl7.Text = "Upload Date:-" + dt_step.Rows.Item(0).Item(6)
            Else
                lbl7.Visible = False
            End If

            If dt_step.Rows.Item(0).Item(7) <> "" Then
                lbl8.Text = " "
            Else
                lbl8.Visible = False
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
            Session("s_id") = Session("sid")
            Session("sid") = ""
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        con.Open()



        Dim cat As String
        cat = "YES"
        Dim query_update As String
        query_update = "update suggested set validity='" + cat + "' where sid='" + Session("s_id") + "';"
        Dim sqlcom_update As New SqlCommand(query_update, con)
        sqlcom_update.ExecuteNonQuery()
        lblmeassage.ForeColor = Drawing.Color.Red
        lblmeassage.Text = "Successfuly Granted"
        con.Close()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim scon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        scon.Open()

        Dim query As String
        query = "delete * from suggested where sid='" + Session("s_id") + "';"
        Dim com_del As New SqlCommand(query, scon)
        com_del.ExecuteNonQuery()
        lblmeassage.Text = "Data Deleted...."

        scon.Close()
    End Sub
End Class
