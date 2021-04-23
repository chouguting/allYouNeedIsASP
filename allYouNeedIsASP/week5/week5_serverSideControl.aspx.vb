
Partial Class week5_week5_serverSideControl
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblTitle.BackColor = System.Drawing.Color.Yellow
        ltlOutput.Text = "HIIIIII"

    End Sub

    Protected Sub openPanel_Click(sender As Object, e As EventArgs) Handles openPanel.Click
        Panel1.Visible = True
    End Sub

    Protected Sub closePanel_Click(sender As Object, e As EventArgs) Handles closePanel.Click
        Panel1.Visible = False
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Image1.ImageUrl = "face.jpg"
        Image1.Width = 100
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Image1.ImageUrl = "face.jpg"
        Image1.Width = 800
    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Image1.ImageUrl = "blood.png"
        Image1.Width = 800
    End Sub
End Class
