
Partial Class week7_week7_autoPostBack
    Inherits System.Web.UI.Page

    Private Sub inputTextBox_TextChanged(sender As Object, e As EventArgs) Handles inputTextBox.TextChanged
        outputTextLabel.Text = inputTextBox.Text
    End Sub

    Private Sub RadioButton1_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton1.CheckedChanged
        radioOutput.Text = "S1"
    End Sub

    Private Sub RadioButton2_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton2.CheckedChanged
        radioOutput.Text = "S2"
    End Sub

    Private Sub RadioButton3_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton3.CheckedChanged
        radioOutput.Text = "S3"
    End Sub

    Private Sub testDropDownList_SelectedIndexChanged(sender As Object, e As EventArgs) Handles testDropDownList.SelectedIndexChanged
        dropDownListOutput.Text = testDropDownList.SelectedValue
    End Sub

    Protected Sub groupDropDownList_SelectedIndexChanged(sender As Object, e As EventArgs) Handles groupDropDownList.SelectedIndexChanged
        If groupDropDownList.SelectedIndex = 1 Then
            departmentDropDownList.Items.Clear()
            departmentDropDownList.Items.Add("資工系")
            departmentDropDownList.Items.Add("電機系")
        ElseIf groupDropDownList.SelectedIndex = 2 Then
            departmentDropDownList.Items.Clear()
            departmentDropDownList.Items.Add("系工系")
            departmentDropDownList.Items.Add("河工系")
        End If

    End Sub
End Class
