<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week10_exceptionHandling.aspx.vb" Inherits="week10_week10_exceptionHandling" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <hr/>
            <asp:TextBox ID="numerator" runat="server"></asp:TextBox>
            /
            <asp:TextBox ID="deniminator" runat="server"></asp:TextBox>
            <asp:Button ID="calculateButton" runat="server" Text="計算" />

            <br />
            <asp:Label ID="calculateResult" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
