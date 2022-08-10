<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inbox.aspx.cs" Inherits="inbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            ForeColor="DarkSlateGray" Height="21px" OnClick="LinkButton1_Click" Style="z-index: 101;
            left: 64px; position: absolute; top: 246px" Width="42px">Inbox</asp:LinkButton>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" ForeColor="DarkSlateGray" Height="27px" Style="z-index: 100;
            left: 6px; position: absolute; top: 219px" Text="Create Message" 
            Width="178px" onclick="Button1_Click" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    <p style="margin-left: 800px">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
            Font-Size="Medium" ForeColor="LightSeaGreen" Height="23px" Style="z-index: 108;
            left: 768px; position: absolute; top: 159px" Text="Hi," Width="33px"></asp:Label>
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" ForeColor="DarkSlateGray" Style="z-index: 104; left: 44px;
            position: absolute; top: 317px">Trash Mail</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" ForeColor="DarkSlateGray" Style="z-index: 103; left: 61px;
            position: absolute; top: 291px">Draft </asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" ForeColor="DarkSlateGray" OnClick="LinkButton2_Click" Style="z-index: 102;
            left: 49px; position: absolute; top: 268px">Sent Items</asp:LinkButton>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
       
    <asp:GridView ID="GridView1" runat="server" BackColor="White" EmptyDataText="<p><b>No mails found.</b></p>"
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"
        Height="125px" style="margin-left: 185px; margin-bottom: 0px" Width="661px">
        <RowStyle ForeColor="#000066"  />
        <Columns>
  
            <asp:CommandField HeaderText="Show" ShowSelectButton="True" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" Visible="true"
        CellPadding="4" GridLines="Horizontal" Height="19px" style="margin-left: 183px; margin-right: 26px;" 
        Width="558px">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
