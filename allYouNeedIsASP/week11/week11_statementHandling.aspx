<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week11_statementHandling.aspx.vb" Inherits="week11_week11_statementHandling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>View State</h3>
            Name:
            <asp:TextBox ID="nameTextbox" runat="server"></asp:TextBox>
            <asp:Button ID="sendNameButton" runat="server" Text="送出" />
            <br/>
            <asp:Label ID="nameLabel" runat="server" Text=""></asp:Label>
            <hr/>
            <h3>Query String</h3>
            username:
            <asp:TextBox ID="userNameText" runat="server"></asp:TextBox>
            <br/>
            password:
            <asp:TextBox ID="passwordText" runat="server" TextMode="Password"></asp:TextBox>
            <br/>
            <asp:Button ID="loginButton" runat="server" Text="登入" />
            <hr/>
            <h3>Post Back</h3>
            身高:
            <asp:TextBox ID="heightText" runat="server"></asp:TextBox>
            m
            <br/>
            體重:
            <asp:TextBox ID="weightText" runat="server"></asp:TextBox>
            kg
            <br/>
            <asp:Button ID="sendBodyInfoButton" runat="server" Text="送出" PostBackUrl="~/week11/bmiPage.aspx" />
            <hr/>
            <h3>Cookie</h3>
            <asp:Button ID="newCookie" runat="server" Text="新增Cookie" />
            &nbsp;
            <asp:Button ID="readCookie" runat="server" Text="讀取Cookie" />
            <br/>
            <asp:Label ID="cookieStateLabel" runat="server" Text="" ForeColor="Red"></asp:Label>
            <hr/>
            <h3>多鍵值Cookie</h3>
            <asp:Button ID="newMultiKeyCookie" runat="server" Text="新增多鍵值Cookie" />
            &nbsp;
            <asp:Button ID="readMultiKeyCookie" runat="server" Text="讀取多鍵值Cookie" />
            &nbsp;
            <asp:Button ID="deleteMultiKeyCookie" runat="server" Text="刪除多鍵值Cookie" />
            <br/>
            <asp:Label ID="multiKeyCookieStateLabel" runat="server" Text="" ForeColor="Red"></asp:Label>
            
        </div>

    </form>
</body>
</html>
