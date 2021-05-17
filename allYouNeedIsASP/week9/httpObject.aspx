<%@ Page Language="VB" AutoEventWireup="false" CodeFile="httpObject.aspx.vb" Inherits="week9_httpObject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            URL:
            <asp:TextBox ID="urlText" runat="server"></asp:TextBox>
            <asp:Button ID="goToUrl" runat="server" Text="Go" />
            <hr/>
            Server變數:
            <asp:TextBox ID="varText" runat="server"></asp:TextBox>
            <asp:Button ID="searchButton" runat="server" Text="查詢" />
            <asp:Button ID="browserCapability" runat="server" Text="瀏覽器資訊" />

            <br />
            <asp:Label ID="httpInfoLabel" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
