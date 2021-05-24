
Partial Class week10_week10_exceptionHandling
    Inherits System.Web.UI.Page



    Private Sub week10_week10_exceptionHandling_Load(sender As Object, e As EventArgs) Handles Me.Load

        Try

        Catch ex As Exception

        End Try


    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim arr(5) As Integer
        Dim number As Integer = 2
        arr(number) = 4
        Label1.Text = arr(number)
    End Sub

    Protected Sub calculateButton_Click(sender As Object, e As EventArgs) Handles calculateButton.Click
        Dim x, y, result As Integer
        x = CInt(numerator.Text)
        y = CInt(deniminator.Text)
        calculateResult.Text = ""
        Try
            result = x / y
            calculateResult.Text &= "x/y=" & result & "<br/>"
        Catch ex As Exception
            calculateResult.Text &= "程式錯誤" & ex.ToString() & "<br/>"
            Return
        Finally
            calculateResult.Text &= "測試值 x=" & x &
                                    "<br/>" & "測試值 =" & y & "<br/>"
        End Try
        calculateResult.Text &= "AAA"
    End Sub
End Class
