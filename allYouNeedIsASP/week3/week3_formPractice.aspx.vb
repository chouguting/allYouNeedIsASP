
Partial Class week3_week3_formPractice
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Dim temp As String
        'temp = TextBox1.Text & " say:" & TextBox2.Text & "<hr>"
        'Label1.Text = Now & "->" & Label1.Text & temp

        Label1.Text &= Now & "  " & TextBox1.Text & " say:" & TextBox2.Text & "<hr>"
    End Sub
End Class
