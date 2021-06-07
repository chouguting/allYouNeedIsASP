<%@ Page Language="VB" AutoEventWireup="false" CodeFile="week14_sql.aspx.vb" Inherits="week14_week14_sql" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>SQL指令 (指令大小寫沒差)</h3>
            select * from students
            <br/>
            select sid,name,tel from students
            <br/>
            select sid As 學號,name As 姓名, tel As 電話 from students
            <br/>
            select distinct credits from courses
            <br/>
            select * from courses where credits < 4
            <br/>
            select * from students where birthday = '1996/9/3 上午 12:00:00'
            <br/>
            select * from courses where title like N'%程式%'   <h5>(**中文要加N,表示UNICODE)</h5>
            <br/>
            select * from courses where credits between 2 and 3
            <br/>
            select * from students where sid in ('S003', 'S005', 'S001')
            <br/>
            select * from students where sid not in ('S003', 'S005', 'S001')
            <br/>
            select * from courses where c_no like N'%1%' or title like N'%程式%'
            <br/>
            select * from courses where c_no like N'%1%' and (title like N'%程式%' or credits >= 3)
            <br/>
            select * from classes where (grade * 1.1) > 80
            <br/>
            SELECT COUNT(*) AS 課程數 FROM Courses WHERE credits > 3   <h5>(count可記錄資料筆數,這邊是紀錄有幾門課符合條件)</h5>
            <br/>
            SELECT COUNT(*) AS 課程總數, AVG(credits) AS 學分平均值 FROM Courses WHERE c_no LIKE N'%2%'  <h5>(AVG可算平均值)</h5>
            <br/>
            SELECT MAX(credits) AS 最高學分 FROM Courses WHERE c_no LIKE N'%2%'
            <br/>
            SELECT MIN(credits) AS 最低學分 FROM Courses WHERE c_no LIKE N'%2%'
            <br/>
            SELECT SUM(credits) AS 學分總和, SUM(credits)/COUNT(*) AS 學分平均 FROM Courses
            <br/>
            SELECT * FROM Courses ORDER BY credits DESC <h5>(ASC是由小到大排序,DESC是由大到小排序)</h5>
            <br/>


            <hr/>
            SQL 指令:
            <asp:TextBox ID="commandTextBox" runat="server" Height="183px" Width="429px" TextMode="MultiLine"></asp:TextBox>
            &nbsp;
            <asp:Button ID="commandExecutionButton" runat="server" Text="執行" />
            <br/>
            
            <br/>
            <asp:GridView ID="dataGridView" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
            
            SQL 查詢:
            <asp:TextBox ID="searchTextBox" runat="server" Width="377px" ></asp:TextBox>
            &nbsp;
            <asp:Button ID="searchButton" runat="server" Text="查詢" />
            <br/>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="eid,sid,c_no" DataSourceID="SqlDataSource2" Width="800px">
                <Columns>
                    <asp:BoundField DataField="eid" HeaderText="eid" ReadOnly="True" SortExpression="eid" />
                    <asp:BoundField DataField="sid" HeaderText="sid" ReadOnly="True" SortExpression="sid" />
                    <asp:BoundField DataField="c_no" HeaderText="c_no" ReadOnly="True" SortExpression="c_no" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="room" HeaderText="room" SortExpression="room" />
                    <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
                </Columns>
            </asp:GridView>
            <hr/>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sid" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="sid" HeaderText="sid" ReadOnly="True" SortExpression="sid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                    <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
                    <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br/>
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="sid" DataSourceID="SqlDataSource3" ForeColor="#333333">
                <EditItemTemplate>
                    sid:
                    <asp:Label ID="sidLabel1" runat="server" Text='<%# Eval("sid") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    major:
                    <asp:TextBox ID="majorTextBox" runat="server" Text='<%# Bind("major") %>' />
                    <br />
                    tel:
                    <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
                    <br />
                    birthday:
                    <asp:TextBox ID="birthdayTextBox" runat="server" Text='<%# Bind("birthday") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    sid:
                    <asp:TextBox ID="sidTextBox" runat="server" Text='<%# Bind("sid") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    major:
                    <asp:TextBox ID="majorTextBox" runat="server" Text='<%# Bind("major") %>' />
                    <br />
                    tel:
                    <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
                    <br />
                    birthday:
                    <asp:TextBox ID="birthdayTextBox" runat="server" Text='<%# Bind("birthday") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    sid:
                    <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    major:
                    <asp:Label ID="majorLabel" runat="server" Text='<%# Bind("major") %>' />
                    <br />
                    tel:
                    <asp:Label ID="telLabel" runat="server" Text='<%# Bind("tel") %>' />
                    <br />
                    birthday:
                    <asp:Label ID="birthdayLabel" runat="server" Text='<%# Bind("birthday") %>' />
                    <br />

                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                </ItemTemplate>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:FormView>
            

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Classes] WHERE ([sid] LIKE '%' + @sid + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="searchTextBox" Name="sid" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Students] WHERE [sid] = @sid" InsertCommand="INSERT INTO [Students] ([sid], [name], [major], [tel], [birthday]) VALUES (@sid, @name, @major, @tel, @birthday)" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [name] = @name, [major] = @major, [tel] = @tel, [birthday] = @birthday WHERE [sid] = @sid">
                <DeleteParameters>
                    <asp:Parameter Name="sid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sid" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="major" Type="String" />
                    <asp:Parameter Name="tel" Type="String" />
                    <asp:Parameter Name="birthday" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="major" Type="String" />
                    <asp:Parameter Name="tel" Type="String" />
                    <asp:Parameter Name="birthday" Type="DateTime" />
                    <asp:Parameter Name="sid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>

    </form>
</body>
</html>
