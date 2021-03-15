<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week1_introduction.aspx.vb" Inherits="week1_introduction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1"  runat="server" Enabled="False"></asp:Label>
            
            
        <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="295px"></asp:TextBox>
            
            
        <br />
        <br />
            
            
        <asp:Button CssClass="test" ID="Button1" runat="server"  Text="Button"   />
            
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
            
        <asp:Button ID="Button2" runat="server" Text="Button" Height="93px" style="top: 282px; left: 293px; position: absolute" Width="248px" />
    </p>
</form>
</body>
</html>
