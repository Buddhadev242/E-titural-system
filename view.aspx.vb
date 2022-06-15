Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class view
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbluploadername.Text = Session("uploadername")
        lblstream.Text = Session("stream")
        lblsemester.Text = Session("Semester")
        lblyear.Text = Session("year")
        lbltype.Text = Session("type")

        hlattach.NavigateUrl = Session("filepath")


        If Session("type") = "Question" Then
            Panelquestion.Visible = True

            lblqsubject.Text = Session("QuestionSubject")
            lblqcode.Text = Session("Questioncode")
            lblqtype.Text = Session("QuestionType")
            lblqpo.Text = Session("qpdate")
        End If
        If Session("type") = "Book" Then
            Panelbook.Visible = True

            lblbname.Text = Session("bookname")
            lblbauthername.Text = Session("authername")
            lblbediction.Text = Session("ediction")
            lblbookposted.Text = Session("bpdate")
        End If
        If Session("type") = "Programme" Then
            Panelprogram.Visible = True
            lblposteddate.Text = Session("programposteddate")
            lblpname.Text = Session("programname")
            lblpdescription.Text = Session("description")
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim url As String = "view.aspx"
        Dim s As String = "window.close('" + url + "');"
        ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()

        If Session("type") = "Question" Then


            Dim query As String


            query = "insert into question values(@upname,@stream,@semester,@year,@qsub,@qcode,@qtype,@pdate,@filepath);"
            Dim sqlcom As New SqlCommand(query, sqlcon)

            sqlcom.Parameters.AddWithValue("@upname", Session("uploadername"))
            sqlcom.Parameters.AddWithValue("@stream", Session("stream"))
            sqlcom.Parameters.AddWithValue("@semester", Session("Semester"))
            sqlcom.Parameters.AddWithValue("@year", Session("year"))
            sqlcom.Parameters.AddWithValue("@qsub", Session("QuestionSubject"))
            sqlcom.Parameters.AddWithValue("@qcode", Session("Questioncode"))
            sqlcom.Parameters.AddWithValue("@qtype", Session("QuestionType"))
            sqlcom.Parameters.AddWithValue("@pdate", Session("qpdate"))

            sqlcom.Parameters.AddWithValue("@filepath", Session("filepath"))
            sqlcom.ExecuteNonQuery()
            lblmeassage.Text = "Successfuly Upload Your Submitted Data"

        End If
        If Session("type") = "Book" Then



            Dim query_book As String


            query_book = "insert into book values(@upname,@stream,@semester,@year,@bname,@aname,@bediction,@pdate,@filepath);"
            Dim sqlcom_book As New SqlCommand(query_book, sqlcon)

            sqlcom_book.Parameters.AddWithValue("@upname", Session("uploadername"))
            sqlcom_book.Parameters.AddWithValue("@stream", Session("stream"))
            sqlcom_book.Parameters.AddWithValue("@semester", Session("Semester"))
            sqlcom_book.Parameters.AddWithValue("@year", Session("year"))
            sqlcom_book.Parameters.AddWithValue("@bname", Session("bookname"))
            sqlcom_book.Parameters.AddWithValue("@aname", Session("authername"))
            sqlcom_book.Parameters.AddWithValue("@bediction", Session("ediction"))
            sqlcom_book.Parameters.AddWithValue("@pdate", Session("bpdate"))

            sqlcom_book.Parameters.AddWithValue("@filepath", Session("filepath"))
            sqlcom_book.ExecuteNonQuery()
            lblmeassage.Text = "Successfuly Upload Your Submitted Data"





        End If



        If Session("type") = "Programme" Then



            Dim query_p As String


            query_p = "insert into program values(@upname,@stream,@semester,@year,@pname,@pdescripction,@pdate,@filepath);"
            Dim sqlcom_p As New SqlCommand(query_p, sqlcon)

            sqlcom_p.Parameters.AddWithValue("@upname", Session("uploadername"))
            sqlcom_p.Parameters.AddWithValue("@stream", Session("stream"))
            sqlcom_p.Parameters.AddWithValue("@semester", Session("Semester"))
            sqlcom_p.Parameters.AddWithValue("@year", Session("year"))
            sqlcom_p.Parameters.AddWithValue("@pname", Session("programname"))
            sqlcom_p.Parameters.AddWithValue("@pdescripction", Session("description"))

            sqlcom_p.Parameters.AddWithValue("@pdate", Session("programposteddate"))

            sqlcom_p.Parameters.AddWithValue("@filepath", Session("filepath"))
            sqlcom_p.ExecuteNonQuery()
            lblmeassage.Text = "Successfuly Upload Your Submitted Data"

        End If







        sqlcon.Close()
    End Sub
End Class
