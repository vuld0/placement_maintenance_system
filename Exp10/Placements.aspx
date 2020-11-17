<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Placements.aspx.cs" Inherits="Exp10.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             Master Page
            <asp:TreeView ID="TreeView1" runat="server">
                <Nodes>
                    <asp:TreeNode Text="Login" NavigateUrl="~/WebForm1.aspx" Target="_blank"></asp:TreeNode>
                    <asp:TreeNode Text="Register" NavigateUrl="~/WebForm2.aspx" Target="_blank"></asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                <asp:BoundField DataField="Pay" HeaderText="Pay" SortExpression="Pay" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementsConnectionString %>" SelectCommand="SELECT * FROM [placements]"></asp:SqlDataSource>
        <br />
        To Add More<br />
        <br />
        Company<p>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            Role</p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Pay<p>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
        </p>
        <p>
            To Remove a Company type the name of the company below:</p>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Remove" />
        </p>
        <p>
            Update a Company&#39;s Role:</p>
        <p>
            Company name to updated:</p>
        <p>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            Company offering new role:</p>
        <p>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
        </p>
    </form>
</body>
</html>
