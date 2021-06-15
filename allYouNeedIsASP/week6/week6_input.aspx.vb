
Partial Class week6_week6_input
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        myHyperLink.NavigateUrl = "https://chouguting.com"
        If Page.IsPostBack Then
            If formNameTextBox.Text <> "" Then
                welcomeLabel.Text = nameTextBox.Text & " Welcome"
            End If
        Else
            formNameTextBox.Text = "User"
            welcomeLabel.Text = "歡迎"
            dynamicDropdownList.Items.Add("A")

        End If
    End Sub

    Protected Sub calculateBMIButton_Click(sender As Object, e As EventArgs) Handles calculateBMIButton.Click
        Dim height As Double = CDbl(heightTextBox.Text) / 100.0
        Dim weight As Double = CDbl(weightTextBox.Text)

        bmiOutput.Text = "姓名: " & nameTextBox.Text & vbNewLine
        bmiOutput.Text &= "密碼: " & passwordTextBox.Text & vbNewLine
        bmiOutput.Text &= "BMI: " & Format((weight / (height * height)), ".00")
    End Sub



    Protected Sub clearButton_Click(sender As Object, e As EventArgs) Handles clearButton.Click
        messageLabel.Text = ""
        formMessageTextBox.Text = ""
    End Sub

    Protected Sub enterButton_Click(sender As Object, e As EventArgs) Handles enterButton.Click
        messageLabel.Text = "<hr/>" & Now & "<br/>" &
                            formNameTextBox.Text & " 說:" &
                            Replace(formMessageTextBox.Text, vbNewLine, "<br/>") &
                            messageLabel.Text

    End Sub



    Protected Sub calculateMoneyButton_Click(sender As Object, e As EventArgs) Handles calculateMoneyButton.Click
        Dim totalCost As Integer = 0
        If checkOrg.Checked Then
            totalCost += 50
        End If

        If checkBeef.Checked Then
            totalCost += 50
        End If

        If checkSeafood.Checked Then
            totalCost += 50
        End If

        totalCostLabel.Text = totalCost.ToString("C")
    End Sub

    Protected Sub radioCheckButton_Click(sender As Object, e As EventArgs) Handles radioCheckButton.Click
        If RadioButton1.Checked Then
            radioLabel.Text = "選項1"
        End If

        If RadioButton2.Checked Then
            radioLabel.Text = "選項2"
        End If

        If RadioButton3.Checked Then
            radioLabel.Text = "選項3"
        End If
    End Sub

    Protected Sub confirmButton_Click(sender As Object, e As EventArgs) Handles confirmButton.Click
        If paymentDropdownList.SelectedIndex > -1 Then
            If paymentDropdownList.SelectedIndex = 0 Then
                paymentLabel.Text = "wait"
            End If
            If paymentDropdownList.SelectedIndex = 1 Then
                paymentLabel.Text = paymentDropdownList.SelectedValue
            End If
            If paymentDropdownList.SelectedIndex = 2 Then
                paymentLabel.Text = paymentDropdownList.SelectedValue
            End If
            If paymentDropdownList.SelectedIndex = 3 Then
                paymentLabel.Text = paymentDropdownList.SelectedValue
            End If
        End If
    End Sub

    Protected Sub addToListButton_Click(sender As Object, e As EventArgs) Handles addToListButton.Click
        dynamicDropdownList.Items.Add(addTextBox.Text)
    End Sub

    Protected Sub deleteItemButton_Click(sender As Object, e As EventArgs) Handles deleteItemButton.Click
        dynamicDropdownList.Items.Remove(addTextBox.Text)
    End Sub

    Protected Sub clearItemButton_Click(sender As Object, e As EventArgs) Handles clearItemButton.Click
        addTextBox.Text = ""
        dynamicDropdownList.Items.Clear()
    End Sub

    Protected Sub clearFirstItem_Click(sender As Object, e As EventArgs) Handles clearFirstItem.Click
        dynamicDropdownList.Items.RemoveAt(0)
    End Sub



    Protected Sub brandListBoxButton_Click(sender As Object, e As EventArgs) Handles brandListBoxButton.Click
        Dim str As String= ""
        For i As Integer = 0 To brandListBox.Items.Count-1
            If brandListBox.Items(i).Selected Then
                str &= brandListBox.Items(i).Text & "<br/>"
            End If
        Next
        brandLabel.Text = str
    End Sub

    Protected Sub calPhoneCost_Click(sender As Object, e As EventArgs) Handles calPhoneCost.Click
        Dim total As Integer = 0
        Dim count As Integer = 0
        Dim rate As Double
        For i As Integer = 0 To phoneCheckBoxList.Items.Count - 1
            If phoneCheckBoxList.Items(i).Selected Then
                total += CInt(phoneCheckBoxList.Items(i).Value)
                count += 1
            End If
        Next

        If shipmentRadioButtonList.SelectedIndex <= -1 Then
            phoneCostLabel.Text = "請選擇付款/運送方式"
        Else
            rate = CInt(shipmentRadioButtonList.SelectedValue) / 100
            phoneCostLabel.Text = "總價: $" & CInt(total * (1 + rate)) & "-共" & count & "台"
        End If

    End Sub

    Protected Sub phoneCheckBoxList_SelectedIndexChanged(sender As Object, e As EventArgs) Handles phoneCheckBoxList.SelectedIndexChanged

    End Sub
End Class
