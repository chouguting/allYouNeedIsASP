<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week3_controlFlowPractice.aspx.vb" Inherits="week3_week3_controlFlowPractice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="分數(0~100) :"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="60px" Width="338px"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" Height="56px" Text="Button" Width="159px" />

            <br />
            <asp:Label ID="Label3" runat="server" Text="星期幾(1~7) :"></asp:Label>
            <asp:TextBox ID="TextBoxDay" runat="server" Height="60px" Width="338px"></asp:TextBox>
            &nbsp;
            <asp:Button ID="Button2" runat="server" Height="56px" Text="Button" Width="159px" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
