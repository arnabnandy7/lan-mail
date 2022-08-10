<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="loginpage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>LOG IN</title>
</head>
<body bgcolor="lightsteelblue">
    <form id="form1" runat="server">
    <div title="LOGIN PAGE">
        &nbsp;
        <asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/image/OR.jpg" Style="z-index: 100;
            left: 11px; position: absolute; top: 40px" Width="236px" />
        <asp:Image ID="Image2" runat="server" Height="349px" ImageUrl="~/image/1.jpg" Style="z-index: 101;
            left: 16px; position: absolute; top: 116px" Width="555px" />
        <asp:Image ID="Image3" runat="server" Height="86px" ImageUrl="~/image/getreg.jpg"
            Style="z-index: 102; left: 704px; position: absolute; top: 373px" Width="367px" />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/image/Register-Button.jpg"
            Style="z-index: 103; left: 775px; position: absolute; top: 413px" Width="220px" OnClick="ImageButton1_Click" />
        <asp:Image ID="Image4" runat="server" Height="233px" ImageUrl="~/image/whitesignin.jpg"
            Style="z-index: 104; left: 705px; position: absolute; top: 124px" Width="367px" />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" Font-Strikeout="False" Font-Underline="True" Height="23px"
            Style="z-index: 105; left: 717px; position: absolute; top: 192px" Text="Email "
            Width="54px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="18px" Style="z-index: 106; left: 817px;
            position: absolute; top: 193px" Width="185px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" Font-Underline="True" Style="z-index: 107; left: 714px; position: absolute;
            top: 248px" Text="Password" Width="60px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="18px" Style="z-index: 108; left: 815px;
            position: absolute; top: 241px" Width="188px" TextMode="Password"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="43px" ImageUrl="~/image/loginb.jpg"
            Style="z-index: 109; left: 798px; position: absolute; top: 302px" Width="186px" OnClick="ImageButton2_Click" />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="OrangeRed"
            Height="1px" Style="z-index: 110; left: 831px; position: absolute; top: 218px"
            Text="Invalid Username" Width="152px"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="OrangeRed"
            Style="z-index: 111; left: 833px; position: absolute; top: 270px" Text="Invalid Password"
            Width="130px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="Email/Username Cannot be Blank" Font-Bold="True" Font-Size="Medium"
            ForeColor="OrangeRed" Style="z-index: 112; left: 1036px; position: absolute;
            top: 195px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="Password Madetory" Font-Bold="True" Font-Size="Medium" ForeColor="OrangeRed"
            Style="z-index: 114; left: 1038px; position: absolute; top: 241px" Width="213px"></asp:RequiredFieldValidator>
    
    </div>
    </form>
</body>
</html>
