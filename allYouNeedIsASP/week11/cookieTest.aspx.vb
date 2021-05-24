
Partial Class week11_cookieTest
    Inherits System.Web.UI.Page




    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim name As String
        If Request.Cookies("userName") IsNot Nothing Then
            name = Server.UrlDecode(Request.Cookies("userName").Value)
            cookieInfo.Text = "Cookie值: " & name
        End If
    End Sub


    Protected Sub deleteCookie_Click(sender As Object, e As EventArgs) Handles deleteCookie.Click
        '讓cookie立即過期
        Dim expireDate As Date = DateAdd("D", -365, Today)
        Response.Cookies("userName").Expires = expireDate
        Response.Redirect("week11_statementHandling.aspx")
    End Sub
End Class
