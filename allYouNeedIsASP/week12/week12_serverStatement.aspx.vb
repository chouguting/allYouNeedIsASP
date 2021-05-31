
Partial Class week12_week12_serverStatement
    Inherits System.Web.UI.Page


    Protected Sub loginButton_Click(sender As Object, e As EventArgs) Handles loginButton.Click
        Session("UserName") = userIDTextBox.Text
        Session("UserPassword") = passwordTextBox.Text
        Response.Redirect("sessionAfterLogin.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '計算人數
        If Application("Page_Counter") Is Nothing Then
            Application.Lock()
            Application("Page_Counter") = 0
            Application.UnLock()
        End If
        Application.Lock()
        Application("Page_Counter") = Application("Page_Counter") + 1
        Application.UnLock()
        counterLabel.Text = "總瀏覽次數: " & Application("Page_Counter")


        'Global
        Dim output As String = Application("msg")
        globalLabel.Text = output
        Application("msg") = ""
        globalLabel.Text &= "載入網頁...<br/>顯示網頁內容..."
        If Session.IsNewSession = True Then
            globalLabel.Text &= "<b>新的Session</b><br/>"
        Else
            globalLabel.Text &= "<b>同一個Session</b><br/>"
        End If
    End Sub

    Protected Sub endSession_Click(sender As Object, e As EventArgs) Handles endSession.Click
        Session.Abandon()
        Response.Redirect("week12_serverStatement.aspx")
    End Sub
End Class
