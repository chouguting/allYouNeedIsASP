
Partial Class week11_afterLogin
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim username, password As String
        '送出時如果有用Encode 這裡就要Decode
        username = Server.UrlDecode(Request.QueryString("User"))
        password = Server.UrlDecode(Request.QueryString("Pass"))
        userInfoText.Text = "使用者名稱: " & username & "<br/>" &
                          "密碼: " & password
    End Sub
End Class
