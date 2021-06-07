<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week14_dataBinding.aspx.vb" Inherits="week14_dataBinding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="nameListBox" runat="server" Height="172px" Width="225px"></asp:ListBox>
            <asp:Button ID="nameListButton" runat="server" Text="選擇" />
            <br/>
            <asp:Label ID="nameLabel" runat="server" Text="" ForeColor="blue"></asp:Label>
            <hr/>
            <asp:SqlDataSource ID="nameSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            <asp:ListBox ID="nameListBoxSql" runat="server" Height="172px" Width="225px" DataSourceID="nameSqlDataSource" DataTextField="name" DataValueField="sid"></asp:ListBox>
            <asp:Button ID="nameListButtonSql" runat="server" Text="選擇" />
            <br/>
            <asp:Label ID="nameLabelSql" runat="server" Text="" ForeColor="blue"></asp:Label>
            <hr/>
            <asp:DropDownList ID="DropDownList1" runat="server"  Width="172px" DataSourceID="creditSqlDataSource" DataTextField="credits" DataValueField="credits"></asp:DropDownList>

            <asp:SqlDataSource ID="creditSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [credits] FROM [Courses]"></asp:SqlDataSource>
            <hr/>
        </div>
    </form>
</body>
</html>
