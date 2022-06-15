
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("user") <> "" Then
            lbtnLogout.Visible = True
            HyperLink1.Visible = False
        Else
            lbtnLogout.Visible = False
            HyperLink1.Visible = True
        End If
    End Sub

  
    Protected Sub lbtnLogout_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnLogout.Click
        Session("user") = ""
        Response.Redirect("AdminLogin.aspx")
    End Sub
End Class

