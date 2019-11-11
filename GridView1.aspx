<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GridView1.aspx.cs" Inherits="asp.net1.GridView1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container">
        <h2 class="bg-success text-white text-center">working with grids.</h2>
        <div class="row">
            <div class="col">
                <asp:GridView ID="grid1" runat="server" 
                    AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" 
                    DataKeyNames="CustomerID" 
                    DataSourceID="SqlDataSource1" 
              
                    BackColor="White" BorderColor="#DEDFDE" 
                    BorderStyle="None" BorderWidth="1px"
                    CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                        <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    </Columns>

                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                    DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" 
                    InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName],
                    [ContactName], [City], [Country]) VALUES (@CustomerID, @CompanyName,
                    @ContactName, @City, @Country)" SelectCommand="SELECT [CustomerID],
                    [CompanyName], [ContactName], [City], [Country] FROM [Customers]"
                    UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName,
                    [ContactName] = @ContactName, [City] = @City, [Country] = @Country
                    WHERE [CustomerID] = @CustomerID">
                    <DeleteParameters>
                        <asp:Parameter Name="CustomerID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerID" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="ContactName" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="ContactName" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter Name="CustomerID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </section>

</asp:Content>
