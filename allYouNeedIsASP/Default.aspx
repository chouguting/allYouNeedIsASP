<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
        <p>
            <asp:Button ID="Button2" runat="server" style="position: absolute; z-index: 1; left: 212px; top: 127px" Text="Button" />
        </p>
    </form>
</body>
</html>
