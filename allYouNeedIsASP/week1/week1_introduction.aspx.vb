
Partial Class week1_introduction
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Text = "Test"
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim temp As String
        temp = Label1.Text
        Label1.Text = TextBox1.Text
        TextBox1.Text = temp
    End Sub
End Class
