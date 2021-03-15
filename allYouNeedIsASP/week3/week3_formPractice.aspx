<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week3_formPractice.aspx.vb" Inherits="week3_week3_formPractice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label2" runat="server" Text="name:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="115px" Text="user"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="message:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="send" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
