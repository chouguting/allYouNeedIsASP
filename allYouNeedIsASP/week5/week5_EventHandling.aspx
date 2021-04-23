<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week5_EventHandling.aspx.vb" Inherits="week5_eventHandling" %>

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
            <br />
            <asp:Label ID="Label1" runat="server" BorderStyle="Solid" Height="203px" Width="452px"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="176px" Text="Card 1" Width="201px" ToolTip="WHAT??"/>
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="175px" Text="Card 2" Width="203px" style="margin-top: 0px" />
            &nbsp;&nbsp;
            <br />
        </div>
    </form>
</body>
</html>
