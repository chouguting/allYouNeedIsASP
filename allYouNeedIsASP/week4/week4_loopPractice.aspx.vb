
Imports System.Activities.Expressions

Partial Class week4_week4_loopPractice
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim sum As Integer = 0
        For i As Integer = 0 To CInt(TextBox1.Text)
            sum += i
        Next
        Label1.Text = sum
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim sum As Integer = 0
        For i As Integer = 0 To CInt(TextBox1.Text) Step 2
            sum += i
        Next
        Label1.Text = sum
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim sum As Integer = 0
        For i As Integer = 1 To CInt(TextBox1.Text) Step 2
            sum += i
        Next
        Label1.Text = sum
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim theStr As String = ""
        For i As Integer = 1 To CInt(TextBox1.Text)
            For j As Integer = 1 To i
                theStr &= "*"
            Next
            theStr &= "<br/>"
        Next
        Label2.Text = theStr
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim theStr As String = ""
        For i As Integer = 1 To CInt(TextBox1.Text)
            For j As Integer = 1 To CInt(TextBox1.Text)
                If (j >= i And j <= CInt(TextBox1.Text) - i) Then
                    theStr &= "*"
                Else
                    theStr &= "&nbsp;&nbsp"

                End If
            Next
            theStr &= "<br/>"
        Next
        Label3.Text = theStr

    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Dim theList As New ArrayList
        theList.Add("AAA")
        theList.Add("BBBB")
        theList.Add("CCCC")

        For Each name As String In theList
            Label4.Text &= name & "<br/>"
        Next

    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Dim sum As Integer = 0
        Dim counter As Integer = 1
        Dim index As Integer = 1

        While index <= CInt(TextBox1.Text)
            sum = 0
            counter = 1
            Do
                sum += counter
                counter += 1
            Loop Until counter > index

            Label5.Text &= "1 to " & index & " => " & sum & "<br/>"
            index += 1

        End While

    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click

        Dim index As Integer = 1
        Dim sum As Integer = 0
        Do While index <= CInt(TextBox1.Text)
            If Not index Mod 3 = 0 Then
                index += 1
                Continue Do
            End If
            sum += index
            index += 1
        Loop
        Label6.Text &= "(三倍數)1 to " & index - 1 & " => " & sum & "<br/>"
    End Sub
End Class
