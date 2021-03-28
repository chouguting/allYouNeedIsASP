<%@ Page Language="VB" AutoEventWireup="false" CodeFile="hw2.aspx.vb" Inherits="hw2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                計算三倍數總和
            </p>
            <p>
                輸入:</p>
            <p>
                <asp:TextBox ID="TextBox1" runat="server" Height="43px" style="margin-bottom: 20px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </p>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
