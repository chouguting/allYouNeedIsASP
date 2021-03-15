
Partial Class homework_Default
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = ""
        For i As Integer = 1 To 9
            For j As Integer = 1 To 9
                Label1.Text &= i & "*" & j & "=" & j
                Label1.Text &= "<br/>"
            Next
            Label1.Text &= "<hr>"
        Next


    End Sub
End Class
