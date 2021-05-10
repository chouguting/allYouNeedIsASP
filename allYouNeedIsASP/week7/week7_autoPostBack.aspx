<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week7_autoPostBack.aspx.vb" Inherits="week7_week7_autoPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="inputTextBox" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="outputTextLabel"  runat="server" Text=""></asp:Label>
            <hr/>
            單選:<br/>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Q1" Text="選項1" AutoPostBack="True"/>&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Q1" Text="選項2" AutoPostBack="True"/>&nbsp;
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Q1" Text="選項3" AutoPostBack="True"/>&nbsp;
            <br/>
            <asp:Label ID="radioOutput"  runat="server" Text=""></asp:Label>
            <br/>

        </div>
    </form>
</body>
</html>
