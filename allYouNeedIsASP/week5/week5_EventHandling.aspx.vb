
Partial Class week5_eventHandling
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click, Button2.Click
        Dim Card(1) As Integer
        Randomize() '初始亂數,利用系統時間產生SEED

        Card(0) = Int(Rnd(10) * 13) + 1 'RND的參數隨便給個正數就好
        Card(1) = Int(Rnd(10) * 13) + 1 'Int() 不會四捨五入 CInt()會四捨五入

        Dim button As Button
        button = CType(sender, Button)  '把Object轉成Button型態

        If button.ID = "Button1" Then
            Button1.Text = "*" & Card(0) & "點"
            Button2.Text = Card(1) & "點"
        ElseIf button.ID = "Button2" Then
            Button1.Text = Card(0) & "點"
            Button2.Text = "*" & Card(1) & "點"
        End If



    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Page.Title = "Test Page"
        showEvent("Page load.... <br/>")
    End Sub


    Private Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        showEvent("pre init.... <br/>")
    End Sub

    Private Sub Page_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        showEvent("pre render.... <br/>")
    End Sub

    Private Sub Page_Unload(sender As Object, e As EventArgs) Handles Me.Unload
        showEvent("unload.... <br/>")
    End Sub



    Sub showEvent(str As String)
        Label1.Text &= str
    End Sub


End Class
