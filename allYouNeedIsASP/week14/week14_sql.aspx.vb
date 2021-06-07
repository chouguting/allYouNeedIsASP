
Partial Class week14_week14_sql
    Inherits System.Web.UI.Page


    Protected Sub commandExecutionButton_Click(sender As Object, e As EventArgs) Handles commandExecutionButton.Click
        '記得在選SQL來源時 不要直接按新增連結 而是右鍵按屬性後再設定ConnectionString
        SqlDataSource1.SelectCommand = commandTextBox.Text
        dataGridView.DataBind()
    End Sub
End Class
