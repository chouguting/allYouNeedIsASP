
Partial Class week4_week4_arrayPractice
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim arr1() As Integer = {1, 3, 2}

        ReDim Preserve arr1(3)

        arr1(3) = 7

        For i As Integer = 0 To arr1.Length - 1
            Label1.Text &= arr1(i) & "&nbsp;"
        Next

    End Sub


End Class
