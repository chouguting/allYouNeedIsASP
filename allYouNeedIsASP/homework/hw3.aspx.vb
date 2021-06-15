
Partial Class homework_hw3
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack Then
            welconLabel.Text = nameTextBox.Text & "歡迎進入網頁!"
        End If



    End Sub

    Protected Sub browserInfoRadioButtonList_SelectedIndexChanged(sender As Object, e As EventArgs) Handles browserInfoRadioButtonList.SelectedIndexChanged
        If browserInfoRadioButtonList.SelectedIndex = 0 Then
            browserInfoLabel.Text = Request.Browser.Type
        ElseIf browserInfoRadioButtonList.SelectedIndex = 1 Then
            browserInfoLabel.Text = Request.Browser.Browser
        ElseIf browserInfoRadioButtonList.SelectedIndex = 2 Then
            browserInfoLabel.Text = Request.Browser.Version
        ElseIf browserInfoRadioButtonList.SelectedIndex = 3 Then
            browserInfoLabel.Text = Request.Browser.Platform
        End If
    End Sub

    Protected Sub browserInfoButton_Click(sender As Object, e As EventArgs) Handles browserInfoButton.Click
        Const BR = "<br/>" '換行常數
        Dim hbc As HttpBrowserCapabilities = Request.Browser
        browserInfoLabel.Text = "瀏覽器種類=" & hbc.Type & BR
        browserInfoLabel.Text &= "瀏覽器名稱=" & hbc.Browser & BR
        browserInfoLabel.Text &= "瀏覽器版本=" & hbc.Version & BR
        browserInfoLabel.Text &= "作業系統平台=" & hbc.Platform
    End Sub

    Protected Sub passwordValidator2_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles passwordValidator2.ServerValidate
        If args.Value.EndsWith("0") Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If
    End Sub

    Protected Sub registerButton_Click(sender As Object, e As EventArgs) Handles registerButton.Click
        If Page.IsValid Then
            loginLabel.Text = "使用者名稱=" & userAccountTextBox.Text & "<br/>"
            loginLabel.Text &= "使用者密碼=" & userPasswordTextBox.Text
        End If
    End Sub

    Protected Sub calculateCost_Click(sender As Object, e As EventArgs) Handles calculateCost.Click
        Dim cost As Integer = 0
        Dim numberOfItem As Integer = 0
        For i As Integer = 0 To computerPartCheckBoxList.Items.Count - 1
            If computerPartCheckBoxList.Items(i).Selected Then
                cost += CInt(computerPartCheckBoxList.Items(i).Value)
                numberOfItem += 1
            End If
        Next

        Dim totalCost As Double = CDbl(cost) * CDbl(shipmentRadioButtonList.SelectedValue)
        costLabel.Text = "總價: $" & totalCost & "-共" & numberOfItem & "件商品"
    End Sub



    Protected Sub dayDropDownList_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dayDropDownList.SelectedIndexChanged
        dayLabel.Text = dayDropDownList.SelectedValue
    End Sub

    Protected Sub toRightButton_Click(sender As Object, e As EventArgs) Handles toRightButton.Click
        While Not leftListBox.SelectedIndex=-1
            rightListBox.Items.Add(leftListBox.SelectedItem)
            leftListBox.Items.Remove(leftListBox.SelectedItem)
        End While
        
    End Sub

    Protected Sub toLeftButton_Click(sender As Object, e As EventArgs) Handles toLeftButton.Click
        While Not rightListBox.SelectedIndex=-1
            leftListBox.Items.Add(rightListBox.SelectedItem)
            rightListBox.Items.Remove(rightListBox.SelectedItem)
        End While
    End Sub

    Protected Sub schoolListItem_SelectedIndexChanged(sender As Object, e As EventArgs) Handles schoolListItem.SelectedIndexChanged
        If schoolListItem.SelectedValue = "校本部"
            academyListItem.Items.Clear()
            academyListItem.Items.Add("")
            academyListItem.Items.Add("人文社會學院")
            academyListItem.Items.Add("生命科學院")
        End If
        If schoolListItem.SelectedValue = "濱海校區"
            academyListItem.Items.Clear()
            academyListItem.Items.Add("")
            academyListItem.Items.Add("工學院")
            academyListItem.Items.Add("電資學院")
        End If
    End Sub

    Protected Sub academyListItem_SelectedIndexChanged(sender As Object, e As EventArgs) Handles academyListItem.SelectedIndexChanged
        If academyListItem.SelectedValue = "人文社會學院"
            departmentListItem.Items.Clear()
            departmentListItem.Items.Add("")
            departmentListItem.Items.Add("海洋文化研究所")
            departmentListItem.Items.Add("教育研究所")
        End If

        If academyListItem.SelectedValue = "生命科學院"
            departmentListItem.Items.Clear()
            departmentListItem.Items.Add("")
            departmentListItem.Items.Add("食品科學系")
            departmentListItem.Items.Add("水產養殖系")
        End If

        If academyListItem.SelectedValue = "工學院"
            departmentListItem.Items.Clear()
            departmentListItem.Items.Add("")
            departmentListItem.Items.Add("材料工程學系")
            departmentListItem.Items.Add("河海工程學系")
        End If

        If academyListItem.SelectedValue = "電資學院"
            departmentListItem.Items.Clear()
            departmentListItem.Items.Add("")
            departmentListItem.Items.Add("電機工程學系")
            departmentListItem.Items.Add("資訊工程學系")
        End If

    End Sub



    
End Class
