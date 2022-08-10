<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mailcreate.aspx.cs" Inherits="mailcreate" EnableSessionState="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>COMPOSE MESSAGE</title>
</head>
<body background="bg/blue.png">
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" ForeColor="DarkSlateGray" Height="27px" Style="z-index: 100;
            left: 6px; position: absolute; top: 219px" Text="Create Message" Width="178px" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            ForeColor="DarkSlateGray" Height="21px" OnClick="LinkButton1_Click" Style="z-index: 101;
            left: 64px; position: absolute; top: 246px" Width="42px">Inbox</asp:LinkButton>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" ForeColor="DarkSlateGray" OnClick="LinkButton2_Click" Style="z-index: 102;
            left: 49px; position: absolute; top: 268px">Sent Items</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" ForeColor="DarkSlateGray" Style="z-index: 103; left: 61px;
            position: absolute; top: 291px" OnClick="LinkButton3_Click">Draft </asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" ForeColor="DarkSlateGray" Style="z-index: 104; left: 44px;
            position: absolute; top: 317px" OnClick="LinkButton4_Click">Trash Mail</asp:LinkButton>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="31px" ImageUrl="~/image/web-user.jpg"
            Style="z-index: 105; left: 968px; position: absolute; top: 175px" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" ImageUrl="~/image/th_Logout_Icon.png"
            Style="z-index: 106; left: 1020px; position: absolute; top: 174px" Width="75px" />
        <asp:Panel ID="Panel1" runat="server" Height="504px" Style="z-index: 107; left: 210px;
            position: absolute; top: 234px" Width="875px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                Font-Size="Medium" ForeColor="SteelBlue" Height="21px" Style="z-index: 100; left: 17px;
                position: absolute; top: 10px" Text="To" Width="81px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="20px" Style="z-index: 101; left: 122px;
                position: absolute; top: 8px" TextMode="MultiLine" Width="737px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                Font-Size="Medium" ForeColor="SteelBlue" Height="25px" Style="z-index: 102; left: 17px;
                position: absolute; top: 43px" Text="Subject" Width="77px"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="21px" Style="z-index: 103; left: 122px;
                position: absolute; top: 47px" TextMode="MultiLine" Width="738px"></asp:TextBox>
            <asp:FileUpload ID="FileUpload1" runat="server" Height="37px" Style="z-index: 104;
                left: 124px; position: absolute; top: 91px" Width="496px" />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                Font-Overline="True" Font-Size="Medium" ForeColor="SteelBlue" 
                Height="20px" Style="z-index: 105;
                left: 17px; position: absolute; top: 102px" Text="Attachments" 
                Width="77px" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                Font-Size="Medium" ForeColor="SteelBlue" Style="z-index: 106; left: 19px; position: absolute;
                top: 161px" Text="Message" Width="82px"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Height="275px" Style="z-index: 107;
                left: 125px; position: absolute; top: 157px" TextMode="MultiLine" Width="743px"></asp:TextBox>
            <asp:ImageButton ID="ImageButton3" runat="server" Height="28px" ImageUrl="~/image/send.png"
                Style="z-index: 108; left: 443px; position: absolute; top: 443px" Width="65px" OnClick="ImageButton3_Click" />
            &nbsp;<br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Names="Century" Font-Size="12pt" 
                ForeColor="Maroon"></asp:Label>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="Medium" ForeColor="Teal" Style="z-index: 108; left: 701px; position: absolute;
            top: 185px" Text="Hi."></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="Medium" ForeColor="#8080FF" Height="12px" Style="z-index: 110; left: 730px;
            position: absolute; top: 188px" Text="Label" Width="127px"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
