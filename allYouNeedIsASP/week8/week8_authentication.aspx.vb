
Partial Class week8_week8_authentication
    Inherits System.Web.UI.Page


    Protected Sub loginButton_Click(sender As Object, e As EventArgs) Handles loginButton.Click
        If Page.IsValid Then
            loginStatus.Text = "使用者名稱: " & nameTextBox.Text &
                               "密碼: " & passwordTextBox.Text
        End If
    End Sub


    Protected Sub orderButton_Click(sender As Object, e As EventArgs) Handles orderButton.Click
        If Page.IsValid Then
            orderCheckLabel.Text = "使用者密碼: " & passwordCheck1.Text &
                                   "購買數量: " & buyCount.Text
        End If
    End Sub

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        If args.Value.StartsWith("_") Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If
    End Sub


End Class
