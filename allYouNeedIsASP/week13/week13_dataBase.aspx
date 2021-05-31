<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week13_dataBase.aspx.vb" Inherits="week13_week13_dataBase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
            <hr/>
            <asp:Label ID="scalerOutput" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Button ID="scalarOutputButton" runat="server" Text="秀出" />
            <hr/>
            <asp:Label ID="adapterOutput" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Button ID="adapterOutputButton" runat="server" Text="秀出" />
        </div>
    </form>
</body>
</html>
