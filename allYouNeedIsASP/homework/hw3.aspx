<%@ Page Language="VB" AutoEventWireup="false" CodeFile="hw3.aspx.vb" Inherits="homework_hw3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            我的姓名:
            <asp:TextBox ID="nameTextBox" runat="server" Width="334px"></asp:TextBox>
            <asp:Button ID="loginButton" runat="server" Text="登入" />
            <br/>
            <asp:Label ID="welconLabel" runat="server" Text="" ForeColor="Blue"></asp:Label>   
            <hr />

            <asp:RadioButtonList ID="browserInfoRadioButtonList" runat="server" RepeatDirection="Horizontal" Width="604px" AutoPostBack="True">
                <asp:ListItem Value="type">瀏覽器種類</asp:ListItem>
                <asp:ListItem Value="browser">瀏覽器名稱</asp:ListItem>
                <asp:ListItem Value="version">瀏覽器版本</asp:ListItem>
                <asp:ListItem Value="platform">作業系統平台</asp:ListItem>
            </asp:RadioButtonList>
            
            <asp:Button ID="browserInfoButton" runat="server" Text="全部顯示" />
            <br/>
            <asp:Label ID="browserInfoLabel" ForeColor="White" BorderStyle="Ridge" BackColor="Black" runat="server" Text=""></asp:Label>
            <hr/>
            使用者名稱:
            <asp:TextBox ID="userAccountTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="accountBlankValidator" ForeColor="Red" runat="server" ErrorMessage="需要帳號" ControlToValidate="userAccountTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="accountValidator1" ForeColor="Red" runat="server" ErrorMessage="名稱不可使用數字或大寫字母" ControlToValidate="userAccountTextBox" Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>
            <asp:RegularExpressionValidator ID="accountValidator2" ForeColor="Red" runat="server" ErrorMessage="名稱不可使用數字或大寫字母" ControlToValidate="userAccountTextBox" Display="Dynamic" ValidationExpression="[^0-9A-Z]+"></asp:RegularExpressionValidator>
            <br/>
            使用者密碼:
            <asp:TextBox ID="userPasswordTextBox" TextMode="Password" runat="server" Text="12345678"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passwordBlankValidator" ForeColor="Red" runat="server" ErrorMessage="需要密碼" ControlToValidate="userPasswordTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="passwordValidator1" ForeColor="Red" runat="server" ErrorMessage="密碼至少為8位數字" Display="Dynamic" ValidationExpression="[0-9]{8,}" ControlToValidate="userPasswordTextBox"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="passwordValidator2" ForeColor="Red" runat="server" ErrorMessage="不可使用0作為結尾" ControlToValidate="userPasswordTextBox" Display="Dynamic"></asp:CustomValidator>
            <br />
            <asp:Button ID="registerButton" runat="server" Text="註冊" />
            
            <asp:ValidationSummary ForeColor="Red" ID="ValidationSummary" runat="server" HeaderText="&lt;錯誤摘要:&gt;" DisplayMode="List" />
            <br/>
            <asp:Label ID="loginLabel" ForeColor="Blue" runat="server" Text=""></asp:Label>
            <hr/>
            <asp:Panel ID="Panel1" GroupingText="電腦零組件" runat="server">
                <asp:CheckBoxList ID="computerPartCheckBoxList" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">

                    <asp:ListItem Value="2500">CPU $2500</asp:ListItem>
                    <asp:ListItem Value="3000">顯示卡 $3000</asp:ListItem>
                    <asp:ListItem Value="500">音效卡 $500</asp:ListItem>
                    
                    <asp:ListItem Value="1000">記憶體 $1000</asp:ListItem>
                    <asp:ListItem Value="5000">硬碟 $5000</asp:ListItem>
                    <asp:ListItem Value="700">機殼 $700</asp:ListItem>
                    <asp:ListItem Value="4000">主機板 $4000</asp:ListItem>
                    <asp:ListItem Value="600">網路卡 $600</asp:ListItem>

                </asp:CheckBoxList>

            </asp:Panel>
            
            <asp:Panel ID="Panel2" GroupingText="運送手續費" runat="server">
                <asp:RadioButtonList ID="shipmentRadioButtonList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1.05" Selected="True">快遞 5%</asp:ListItem>
                    <asp:ListItem Value="1.1">超商取貨 10%</asp:ListItem>
                    <asp:ListItem Value="1.15">貨到付款 15%</asp:ListItem>
                </asp:RadioButtonList>
            </asp:Panel>
            
            <asp:Label ID="costLabel" ForeColor="Blue" runat="server" Text="總價: $0-共0件商品"></asp:Label>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="calculateCost" runat="server" Text="計算" />
            <hr/>
            請選擇星期: 
            <asp:DropDownList ID="dayDropDownList" runat="server" AutoPostBack="True">
                <asp:ListItem Value="Sunday">星期日</asp:ListItem>
                <asp:ListItem Value="Monday">星期一</asp:ListItem>
                <asp:ListItem Value="Tuesday">星期二</asp:ListItem>
                <asp:ListItem Value="Wednesday">星期三</asp:ListItem>
                <asp:ListItem Value="Thursday">星期四</asp:ListItem>
                <asp:ListItem Value="Friday">星期五</asp:ListItem>
                <asp:ListItem Value="Saturday">星期六</asp:ListItem>
            </asp:DropDownList>
            <br/>
            <asp:Label ID="dayLabel" ForeColor="Blue" runat="server" Text=""></asp:Label>
            </div>
            <hr/>
        
        <table style="height: 62px; width: 241px">
            <tr>
                <td>
                    <asp:ListBox ID="leftListBox" runat="server" SelectionMode="Multiple" Height="210px" Width="128px">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                        <asp:ListItem>E</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                        <asp:ListItem>G</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="toRightButton" runat="server" Text=">" Width="64px" />
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <asp:Button ID="toLeftButton" runat="server" Text="<" Width="64px" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:ListBox ID="rightListBox" runat="server" SelectionMode="Multiple" Height="216px" Width="131px">
                        <asp:ListItem>a</asp:ListItem>
                        <asp:ListItem>b</asp:ListItem>
                        <asp:ListItem>c</asp:ListItem>
                        <asp:ListItem>d</asp:ListItem>
                        <asp:ListItem>e</asp:ListItem>
                        <asp:ListItem>f</asp:ListItem>
                        <asp:ListItem>g</asp:ListItem>
                    </asp:ListBox>
                </td>
                
            </tr>
        </table>
        <hr/>
        請選擇所屬單位:
        <asp:DropDownList ID="schoolListItem" runat="server" Width="120px" AutoPostBack="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>校本部</asp:ListItem>
            <asp:ListItem>濱海校區</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="academyListItem" runat="server" Width="120px" AutoPostBack="True">

        </asp:DropDownList>
        <asp:DropDownList ID="departmentListItem" runat="server" Width="120px" AutoPostBack="True">

        </asp:DropDownList>

    </form>
</body>
</html>
