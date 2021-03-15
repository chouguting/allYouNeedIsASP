
Partial Class week3_variablePractice
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Const height = 500
        Dim width As Integer = 500
        Dim name As String = "Gordon"

        Label1.Text = "Name:" & name & "<br/>" &
                      "Title:" & "我的""個人""首頁" & "<br/>" &
                      "Width:" & width & "<br/>" &
                      "Height:" & height & "<br/>"


    End Sub
End Class
