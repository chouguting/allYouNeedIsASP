
Partial Class week9_httpObject
    Inherits System.Web.UI.Page



    Protected Sub goToUrl_Click(sender As Object, e As EventArgs) Handles goToUrl.Click
        Response.Redirect(urlText.Text)
    End Sub

    Private Sub week9_httpObject_PreLoad(sender As Object, e As EventArgs) Handles Me.PreLoad
        Dim title As String = "轉址功能"
        Response.Write(title & "<br/>")
    End Sub

    Protected Sub searchButton_Click(sender As Object, e As EventArgs) Handles searchButton.Click
        httpInfoLabel.Text = Request.ServerVariables(varText.Text)
    End Sub



    Protected Sub browserCapability_Click(sender As Object, e As EventArgs) Handles browserCapability.Click
        Const BR = "<br/>" '換行常數
        Dim hbc As HttpBrowserCapabilities = Request.Browser
        httpInfoLabel.Text = "瀏覽器種類: " & hbc.Type & BR
        httpInfoLabel.Text &= "瀏覽器名稱: " & hbc.Browser & BR
        httpInfoLabel.Text &= "版本: " & hbc.Version & BR
        httpInfoLabel.Text &= "主版本: " & hbc.MajorVersion & BR
        httpInfoLabel.Text &= "次版本: " & hbc.MinorVersion & BR
        httpInfoLabel.Text &= "平台: " & hbc.Platform & BR
        httpInfoLabel.Text &= "支援框架: " & hbc.Frames & BR
        httpInfoLabel.Text &= "支援表格: " & hbc.Tables & BR
        httpInfoLabel.Text &= "支援Cookies: " & hbc.Cookies & BR
        httpInfoLabel.Text &= "支援VBScript: " & hbc.VBScript & BR
        httpInfoLabel.Text &= "支援JavaScript: " & hbc.JavaScript & BR
        httpInfoLabel.Text &= "支援Java Applets: " & hbc.JavaApplets & BR
        httpInfoLabel.Text &= "支援ActiveX控制: " & hbc.ActiveXControls & BR

    End Sub
End Class
