
Partial Class user
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserName") <> "" Then
            lbtnLogout.Visible = True
            HyperLink1.Visible = False
        Else
            lbtnLogout.Visible = False
            HyperLink1.Visible = True
        End If
    End Sub

    Protected Sub lbtnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnLogout.Click
        Session("UserName") = ""
        Response.Redirect("UserLogin.aspx")
    End Sub
End Class

