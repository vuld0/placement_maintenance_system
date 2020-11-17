<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Exp10.WebForm1" %>

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
        Username<p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="The field is required"></asp:RequiredFieldValidator>
        </p>
        Password<p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <p>
            Don&#39;t have an account?</p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Create Account" />
    </form>
</body>
</html>
