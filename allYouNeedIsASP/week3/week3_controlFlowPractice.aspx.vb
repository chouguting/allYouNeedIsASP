
Partial Class week3_week3_controlFlowPractice
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim grade As Integer = TextBox1.Text
        If grade >= 60 Then
            Label1.Text = "WOW!!!!!!!!"

        ElseIf grade < 60 And grade >= 50 Then
            Label1.Text = "Oh Oh"
        Else
            Label1.Text = "NO U"
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim day As Integer = TextBoxDay.Text
        If day = 1 Then
            Label4.Text = "星期一"
        ElseIf day = 2 Then
            Label4.Text = "星期二"
        ElseIf day = 3 Then
            Label4.Text = "星期三"
        ElseIf day = 4 Then
            Label4.Text = "星期四"
        ElseIf day = 5 Then
            Label4.Text = "星期五"
        ElseIf day = 6 Then
            Label4.Text = "星期六"
        ElseIf day = 7 Then
            Label4.Text = "星期日"

        Else
            Label4.Text = ""

        End If

        Select Case day
            Case 6 : Label4.Text &= "<br/>" & "週六假期"
            Case 1, 2, 3 To 5
                Label4.Text &= "<br/>" & "工作日"
            Case 7 : Label4.Text &= "<br/>" & "週日假期"
            Case Else
                Label4.Text &= "<br/>" & "What????"
        End Select

    End Sub
End Class
