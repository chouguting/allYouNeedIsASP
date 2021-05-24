
Partial Class week11_week11_statementHandling
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim name As String = "Jason"
        Dim nickName As String = "lololo"

        If IsPostBack Then
            Dim myName As String = ""
            If ViewState("NickName") IsNot Nothing Then
                myName = ViewState("NickName")
            End If
            nameLabel.Text = myName & "/" & nameTextbox.Text
        Else
            nameTextbox.Text = name
            ViewState("NickName") = nickName
        End If
    End Sub

    Protected Sub loginButton_Click(sender As Object, e As EventArgs) Handles loginButton.Click
        Dim userName As String = userNameText.Text
        Dim password As String = passwordText.Text
        '轉址且傳遞參數到afterLogin.aspx
        Response.Redirect("afterLogin.aspx?User=" & Server.UrlEncode(userName) & "&Pass=" & Server.UrlEncode(password))
    End Sub

    Protected Sub newCookie_Click(sender As Object, e As EventArgs) Handles newCookie.Click
        Dim name As String = "David"
        Response.Cookies("userName").Value = Server.UrlEncode(name)
        'D:用天計算  '10:10天    'Today=從今天開始算
        Dim expireDate As Date = DateAdd("D", 10, Today)
        Response.Cookies("userName").Expires = expireDate
        cookieStateLabel.Text = "成功建立Cookie"
    End Sub



    Protected Sub readCookie_Click(sender As Object, e As EventArgs) Handles readCookie.Click
        Response.Redirect("cookieTest.aspx")
    End Sub

    Protected Sub newMultiKeyCookie_Click(sender As Object, e As EventArgs) Handles newMultiKeyCookie.Click
        Response.Cookies("User")("Name") = Server.UrlEncode("Kevin")
        Response.Cookies("User")("ID") = Server.UrlEncode("0123")
        Response.Cookies("User").Expires = DateAdd("D", 10, Today)
        multiKeyCookieStateLabel.Text = "成功建立多鍵值Cookie"

    End Sub

    Protected Sub readMultiKeyCookie_Click(sender As Object, e As EventArgs) Handles readMultiKeyCookie.Click
        Dim name, idNum As String
        If Request.Cookies("User") IsNot Nothing Then
            name = Server.UrlDecode(Request.Cookies("User")("Name"))
            idNum = Server.UrlDecode(Request.Cookies("User")("ID"))
            multiKeyCookieStateLabel.Text = "Name: " & name & "<br/>"
            multiKeyCookieStateLabel.Text &= "ID:" & idNum
        Else
            multiKeyCookieStateLabel.Text = "多鍵值Cookie不存在"
        End If
    End Sub


    Protected Sub deleteMultiKeyCookie_Click(sender As Object, e As EventArgs) Handles deleteMultiKeyCookie.Click
        Response.Cookies("User").Expires = DateAdd("D", -365, Today)
        multiKeyCookieStateLabel.Text = "成功刪除多鍵值Cookie"
    End Sub
End Class
