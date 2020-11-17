<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Exp10.WebForm2" %>

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
        <p>
            Name</p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            Username</p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>
            Password</p>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <p>
            Re-type Password</p>
        <p>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both Fields must be same!" ControlToCompare="TextBox3" ControlToValidate="TextBox4"></asp:CompareValidator>
        </p>
        
        <p>
            <asp:Button ID="Button1" runat="server" Text="Sign up" />
        </p>
    </form>
</body>
</html>
