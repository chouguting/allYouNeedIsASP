
Partial Class week12_sessionAfterLogin
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim name, password As String
        If Session("UserName") IsNot Nothing Then
            name = Session("UserName")
            password = Session("UserPassword")
        End If
        resultOutput.Text = "Session ID: " & Session.SessionID & "<br/>"
        resultOutput.Text &= "username: " & name & "<br/>"
        resultOutput.Text &= "password: " & password & "<br/>"
        Session.Abandon()

    End Sub
End Class
