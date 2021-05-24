
Partial Class week11_bmiPage
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim height, weight As Double
            Dim txt As TextBox
            txt = PreviousPage.FindControl("heightText")
            height = CDbl(txt.Text)
            txt = PreviousPage.FindControl("weightText")
            weight = CDbl(txt.Text)
            bmiInfoUrl.Text = "BMI:" & (weight / height / height)
        End If
    End Sub
End Class
