Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Security.Cryptography
Imports System.Net
Imports System.Net.Mail
Partial Class Registration
    Inherits System.Web.UI.Page
    Public Function GetMD5Value(ByVal input As String) As String
        Dim md5Value As String = ""
        Dim md5Hasher As New MD5CryptoServiceProvider
        Dim hashedDataBytes As Byte()
        Dim encoder As New UTF8Encoding
        hashedDataBytes = md5Hasher.ComputeHash(encoder.GetBytes(input))
        Dim b As Byte
        For Each b In hashedDataBytes
            md5Value = md5Value & b
        Next
        Return md5Value
    End Function

  


    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
       
        Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        sqlcon.Open()

        Dim username, name, addrees, designation, sex, mailid, mobno, birthday, hoby, favouritegame As String
        Dim pass As String = txtpassword.Text.Trim
        Dim pass_store As String = GetMD5Value(pass)

        username = txtusername.Text
        name = txtName.Text
        addrees = txtaddrees.Text
        designation = txtDesignation.Text
        If rdbmale.Checked = True Then
            sex = rdbmale.Text
        Else
            sex = rdbfemale.Text
        End If
        mailid = txtMailid.Text
        mobno = txtmobno.Text
        birthday = drpDay.Text + "-" + drpMonth.Text + "-" + drpYear.Text
        hoby = txthoby.Text
        favouritegame = txtfg.Text

        Dim query_roll As String
        query_roll = "select rollno from roll where rollno='" + txtroll.Text + "' ;"
        Dim sqlcom_roll As New SqlCommand(query_roll, sqlcon)
        Dim roll_dataa As String = sqlcom_roll.ExecuteScalar
        If roll_dataa = txtroll.Text Then


            Dim query_checkuser As String
            query_checkuser = "select Username from Registration where Username='" + txtusername.Text + "';"
            Dim sqlcom_user As New SqlCommand(query_checkuser, sqlcon)
            If sqlcom_user.ExecuteScalar <> "" Then
                lblmeassage.Text = "This User Already Exist Please Choose Another Username.."
            Else

                Dim path As String

                Dim image As String = System.IO.Path.GetExtension(flphoto.FileName)
                If image.ToLower = ".jpg" Or image.ToLower = ".jpeg" Or image.ToLower = ".bmp" Then


                    flphoto.PostedFile.SaveAs(Server.MapPath(".") + "/Image/" + flphoto.FileName)
                    path = "~//Image//" + flphoto.FileName
                    Session("filepath") = path
                Else
                    lblphoto.Text = "Select JPG,JPEG or BMP picture only"

                End If



                Dim query As String
                query = "insert into Registration values('" + username + "','" + name + "','" + addrees + "','" + Session("filepath") + "','" + designation + "','" + sex + "','" + mailid + "','" + mobno + "','" + birthday + "','" + hoby + "','" + favouritegame + "') ;"
                Dim sqlcom As New SqlCommand(query, sqlcon)


                Dim query_login As String
                query_login = "insert into UserLogin values('" + username + "','" + pass_store + "','" + hoby + "','" + favouritegame + "');"
                Dim sqlcom_login As New SqlCommand(query_login, sqlcon)


                Dim toadd, subjectmail, body, fromaddd, pass_mail As String
                toadd = txtMailid.Text
                subjectmail = "Welcome to e-Tutorial System"
                body = " Your username is: " + txtusername.Text + " and password is: " + txtpassword.Text + " Please Login Your Account And Download"
                fromaddd = "vu.notice@gmail.com"
                pass_mail = "animesh123"
                Dim smtp As New SmtpClient("smtp.gmail.com", 587)
                smtp.EnableSsl = True
                smtp.UseDefaultCredentials = False
                smtp.Credentials = New NetworkCredential(fromaddd, pass_mail)
                Dim mail As New MailMessage(fromaddd, toadd, subjectmail, body)



                Try
                    smtp.Send(mail)
                    sqlcom.ExecuteNonQuery()
                    sqlcom_login.ExecuteNonQuery()
                    lblmeassage.ForeColor = Drawing.Color.Red
                    lblmeassage.Text = "Successfuly Registration Your Account"
                    hllogin.Visible = True
                Catch ex As Exception
                    lblmeassage.ForeColor = Drawing.Color.Blue
                    lblmeassage.Text = "Server Down"
                End Try


            End If




            sqlcon.Close()
        Else

            lblroll.Text = "You are not BCA Student"
        End If




       
    End Sub

   
End Class
