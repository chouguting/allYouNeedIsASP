<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cookieTest.aspx.vb" Inherits="week11_cookieTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="cookieInfo" runat="server" Text="" ForeColor="Red"></asp:Label> 
            <br/>
            <asp:Button ID="deleteCookie" runat="server" Text="刪除Cookie" />
        </div>
    </form>
</body>
</html>
