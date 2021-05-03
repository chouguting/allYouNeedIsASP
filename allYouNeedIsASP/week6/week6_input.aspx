<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week6_input.aspx.vb" Inherits="week6_week6_input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="myHyperLink" runat="server">website</asp:HyperLink>
            <br/>
            <asp:Label ID="welcomeLabel" runat="server" Text="Label"></asp:Label>
            <br/>
            <hr/>
            <p>
                留言:&nbsp;
                <asp:TextBox ID="formMessageTextBox" runat="server" Columns="20"
                              Wrap="True" TextMode="MultiLine" Height="166px"></asp:TextBox>
                <br/>
                <br/>
                姓名:
                <asp:TextBox ID="formNameTextBox" runat="server" Width="317px"></asp:TextBox>
                <br/>
                <asp:Button ID="enterButton" runat="server" Text="輸入" />
                &nbsp;
                <asp:Button ID="clearButton" runat="server" Text="清除" />
                <br/>
                <asp:Label ID="messageLabel" runat="server" Text="" ForeColor="Blue"></asp:Label>

            </p>
            <hr/>
            <p>
                <asp:TextBox ID="bmiOutput" runat="server" Height="114px" TextMode="MultiLine"></asp:TextBox>
                <br/>
                姓名:
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                &nbsp;
                <br/>
                密碼:
                <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;
                <br/>
                身高:
                <asp:TextBox ID="heightTextBox" runat="server"></asp:TextBox>
                &nbsp;
                <br/>
                體重:
                <asp:TextBox ID="weightTextBox" runat="server"></asp:TextBox>
                &nbsp;
                <br/>
                <asp:Button ID="calculateBMIButton" runat="server" Text="計算BMI" />
            </p>
            <hr/>
            點餐:<br/>
            <asp:CheckBox ID="checkOrg" runat="server" Text="原味披薩"/><br/>
            <asp:CheckBox ID="checkBeef" runat="server" Text="牛肉披薩"/><br/>
            <asp:CheckBox ID="checkSeafood" runat="server" Text="海鮮披薩"/><br/>
            <asp:Label ID="totalCostLabel" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Button ID="calculateMoneyButton" runat="server" Text="計算金額" />
            <hr/>

            單選:<br/>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Q1" Text="選項1"/>&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Q1" Text="選項2"/>&nbsp;
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Q1" Text="選項3"/>&nbsp;
            <asp:Button ID="radioCheckButton" runat="server" Text="檢查" /> <br/>
            <asp:Label ID="radioLabel" runat="server" Text=""></asp:Label>
            
            <hr/>
            下拉式選單:<br/>
            <asp:DropDownList ID="paymentDropdownList" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Value="card">信用卡</asp:ListItem>
                <asp:ListItem Value="money">現金</asp:ListItem>
                <asp:ListItem Value="Transfer">轉帳</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:Button ID="confirmButton" runat="server" Text="確認" />
            <br/>
            <asp:Label ID="paymentLabel" runat="server" Text=""></asp:Label>
            <hr/>
            <asp:DropDownList ID="dynamicDropdownList" runat="server"></asp:DropDownList>
            <asp:TextBox ID="addTextBox" runat="server"></asp:TextBox>
            <asp:Button ID="addToListButton" runat="server" Text="新增" />
            <asp:Button ID="deleteItemButton" runat="server" Text="刪除" />
            <asp:Button ID="clearItemButton" runat="server" Text="清空" />
        </div>
    </form>
</body>
</html>
