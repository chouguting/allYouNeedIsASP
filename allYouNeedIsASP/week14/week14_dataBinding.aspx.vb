
Partial Class week14_dataBinding
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim names As ArrayList = New ArrayList()
            names.Add("David")
            names.Add("Jason")
            names.Add("Micheal")
            names.Add("Jennifer")
            nameListBox.DataSource = names
            nameListBox.DataBind() '建立繫結
        End If
    End Sub

    Protected Sub nameListButton_Click(sender As Object, e As EventArgs) Handles nameListButton.Click
        If nameListBox.SelectedIndex > -1 Then
            nameLabel.Text = "選擇的人:" & nameListBox.SelectedValue
        End If
    End Sub

    Protected Sub nameListButtonSql_Click(sender As Object, e As EventArgs) Handles nameListButtonSql.Click
        '記得在選SQL來源時 要按新增連結時 要選擇MICROSOFT SQL SERVER資料庫檔案
        If nameListBoxSql.SelectedIndex > -1 Then
            nameLabelSql.Text = nameListBoxSql.SelectedValue
        End If
    End Sub
End Class
