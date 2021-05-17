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
            <hr/>
            <asp:DropDownList ID="testDropDownList" runat="server" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Value="1號">001</asp:ListItem>
                <asp:ListItem Value="2號">002</asp:ListItem>
                <asp:ListItem Value="3號">003</asp:ListItem>
            </asp:DropDownList>
            <br/>
            <asp:Label ID="dropDownListOutput"  runat="server" Text=""></asp:Label>
            <hr/>
            <asp:DropDownList ID="groupDropDownList" runat="server" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>電資學院</asp:ListItem>
                <asp:ListItem>工學院</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="departmentDropDownList" runat="server"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
