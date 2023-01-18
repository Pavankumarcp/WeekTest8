<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Positions.aspx.cs" Inherits="WeekTest7.Positions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Position Code</label>
            <asp:Label ID="TxtPositionCode" runat="server" Text="Label"></asp:Label>
            <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="RfvPositionCode" ErrorMessage="Please Enter Position Code" runat="server" ControlToValidate="TxtPositionCode"></asp:RequiredFieldValidator>
            </div>
        <div>
            <label>Description</label>
            <asp:Label ID="TxtDescription" runat="server" Text="Label2"></asp:Label>
            <asp:RequiredFieldValidator ForeColor="Red" runat="server" ID="RfvDescription" ControlToValidate="TxtDescription"></asp:RequiredFieldValidator>
            </div>
        <div>
            <label>Year</label>
            <asp:DropDownList ID="DropDownYear"  runat="server"> 
                <asp:ListItem>----Select----</asp:ListItem>
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem>2026</asp:ListItem>
                <asp:ListItem>2027</asp:ListItem>
                <asp:ListItem>2028</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ForeColor="Red" ID="RfvDropDoenYear" runat="server" ControlToValidate="TxtDropDownYear"></asp:RequiredFieldValidator>
            </div>
        <div>
            <label>
                Budgeted Strength
            </label>
            <asp:Label ID="TxtBudgetedStrength" runat="server" Text="Label3"></asp:Label>
            <asp:RequiredFieldValidator ID="RfvBudgetedStrength" ForeColor="Red" runat="server"  ControlToValidate="TxtBudgetedStrength"></asp:RequiredFieldValidator>
            </div>
        <div>
            <label>Current Strength</label>
            <asp:Label ID="TxtCurrentStrength" runat="server" Text="Lael4"></asp:Label>
            <asp:RequiredFieldValidator ForeColor="Red" ID="RfvCurrentStrength" runat="server" ControlToValidate="TxtCurrentStrength"></asp:RequiredFieldValidator>
            </div>
        <div>
            <asp:Button ID="BtnAddNew" Text="Add New" OnClick="BtnAddNew_Click" runat="server" />
            <asp:Button ID="BtnReset" Text="Reset" OnClick="BtnReset_Click" runat="server" />
            </div>
        <div>
            <asp:Label ID="LblMessage" runat="server"></asp:Label>
            </div>


        </div>
    </form>
</body>
</html>
