<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailView.aspx.cs" Inherits="Dashboard.DetailView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" ReadOnly="True" SortExpression="Email_ID" />
                <asp:BoundField DataField="Receipt_Number" HeaderText="Receipt_Number" SortExpression="Receipt_Number" />
                <asp:BoundField DataField="Person_ID" HeaderText="Person_ID" SortExpression="Person_ID" />
                <asp:BoundField DataField="email_Type_ID" HeaderText="email_Type_ID" SortExpression="email_Type_ID" />
                <asp:BoundField DataField="email_address" HeaderText="email_address" SortExpression="email_address" />
                <asp:BoundField DataField="Created_By" HeaderText="Created_By" SortExpression="Created_By" />
                <asp:BoundField DataField="Created_Date" HeaderText="Created_Date" SortExpression="Created_Date" />
                <asp:BoundField DataField="Updated_By" HeaderText="Updated_By" SortExpression="Updated_By" />
                <asp:BoundField DataField="Updated_Date" HeaderText="Updated_Date" SortExpression="Updated_Date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PSQLConnectionString %>" ProviderName="<%$ ConnectionStrings:PSQLConnectionString.ProviderName %>" SelectCommand="SELECT * FROM Email WHERE Email_ID &lt; 2000;"></asp:SqlDataSource>
    </form>
</body>
</html>
