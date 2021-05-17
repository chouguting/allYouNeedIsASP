<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week8_authentication.aspx.vb" Inherits="week8_week8_authentication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
                使用者名稱:
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" ErrorMessage="需要使用者帳號" ForeColor="Red" Display="None" ControlToValidate="nameTextBox"></asp:RequiredFieldValidator>
                <br/>
                使用者密碼:
                <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="passwordRequiredFieldValidator" runat="server" ErrorMessage="需要使用者密碼" ForeColor="Red" Display="None" ControlToValidate="passwordTextBox"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="passwordRequirementFieldValidator" runat="server" ErrorMessage="密碼不能是1234" ForeColor="Red" Display="None" ControlToValidate="passwordTextBox" InitialValue="1234"></asp:RequiredFieldValidator>
                <br/>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="錯誤的資訊"/>
                <br/>
                <asp:Button ID="loginButton" runat="server" Text="登入" />
                <br/>
                <asp:Label ID="loginStatus" runat="server" Text=""></asp:Label>
            
            <hr/>

            使用者密碼:
                <asp:TextBox ID="passwordCheck1" runat="server"></asp:TextBox>
                <br/>
                確認使用者密碼:
                <asp:TextBox ID="passwordCheck2" runat="server"></asp:TextBox>
                <br/>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="兩個密碼不一致" ForeColor="Red" ControlToCompare="passwordCheck2" ControlToValidate="passwordCheck1"></asp:CompareValidator>
                <br/>
                購買數量:
                <asp:TextBox ID="buyCount" runat="server"></asp:TextBox>
                <br/>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="購買數量需大於等於一" ForeColor="Red" ControlToValidate="buyCount" Type="Integer" ValueToCompare="1" Operator="GreaterThanEqual"></asp:CompareValidator>
                <br/>
                <asp:Button ID="orderButton" runat="server" Text="下單" />
                <br/>
                <asp:Label ID="orderCheckLabel" runat="server" Text=""></asp:Label>
            
            <hr/>
            使用者成績:
                <asp:TextBox ID="gradeText" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="成績要在1~100" ForeColor="Red" ControlToValidate="gradeText" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            
            <hr/>
            電子郵件:
            <asp:TextBox ID="emailText" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="電子郵件格式錯誤" ControlToValidate="emailText" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="需要輸入電子郵件" ControlToValidate="emailText" Display="Dynamic"></asp:RequiredFieldValidator>
            <hr/>
            使用者名稱:
            <asp:TextBox ID="userNameText" runat="server" CausesValidation="true"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="使用者名稱格式錯誤" ControlToValidate="userNameText" Display="Dynamic" ForeColor="Red"></asp:CustomValidator>
            </div>
    </form>

</body>
</html>
