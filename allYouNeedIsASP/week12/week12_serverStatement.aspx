<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week12_serverStatement.aspx.vb" Inherits="week12_week12_serverStatement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Session</h3>
            使用者名稱:
            <asp:TextBox ID="userIDTextBox" runat="server"></asp:TextBox>
            <br/>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp; &nbsp&nbsp
            密碼:
            <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <br/>
            <asp:Button ID="loginButton" runat="server" Text="登入" />
            <hr/>
            <h3>Application</h3>
            <asp:Label ID="counterLabel" runat="server" Text=""></asp:Label>
            <hr/>
            <asp:Label ID="globalLabel" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Button ID="refreshButton" runat="server" Text="更新網站" />
            &nbsp

            <asp:Button ID="endSession" runat="server" Text="結束Session" />
        </div>
    </form>
</body>
</html>
