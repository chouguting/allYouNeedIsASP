
Partial Class hw2
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim theSum As Integer = SumOfThree(CInt(TextBox1.Text))
        Label1.Text = CStr(theSum)
    End Sub

    Function SumOfThree(input As Integer) As Integer
        Dim sum As Integer = 0
        For i As Integer = 0 To input
            If i Mod 3 = 0 Then
                sum += i
            End If
        Next i
        Return sum
    End Function
End Class
