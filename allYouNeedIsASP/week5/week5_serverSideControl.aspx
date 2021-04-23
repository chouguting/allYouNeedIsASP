<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week5_serverSideControl.aspx.vb" Inherits="week5_week5_serverSideControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            
            <asp:Panel ID="Panel1" runat="server" GroupingText="the Panel" Visible="False" ScrollBars="Vertical">
                <br />
                <asp:Label ID="lblTitle" runat="server" Text="ASP網頁設計" ></asp:Label>
            
            

                <br />
                <br />
                <asp:Literal ID="ltlOutput" runat="server"></asp:Literal>
            

                <br />
                <br />
                <br />
            </asp:Panel>
            <br />
            <asp:Button ID="openPanel" runat="server" Text="開PANEL" />
            &nbsp;&nbsp;
            <asp:Button ID="closePanel" runat="server" Text="關PANEL" />
            <br />
            <br />
            
            <hr/>
            <br/>
            
            <table class="auto-Style1">
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="face.jpg" />
                    </td>

                </tr>
            </table>
            

            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="face.jpg" Height="266px" Width="709px"/>

        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</body>
</html>
