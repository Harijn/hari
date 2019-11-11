<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="productmaster.aspx.cs" Inherits="asp.net1.productmaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container">
        <h2 class="bg-primary text-light text-center p-2">Product List</h2>
        <div class="row ">
            <div class="col-8 offset-2">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <asp:Label ID="lbl1" runat="server" CssClass="input-group-text" Text="Search"/>
                    </div>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" />
                    <div class="input-group-append">
                        <asp:LinkButton ID="btnlink1" runat="server" CssClass="btn btn-primary" 

                            OnClick="btnlink1_Click">
                        <i class="fa fa-search"></i>
                            </asp:LinkButton>
                  <asp:LinkButton ID="btnclear"
                      runat="server" 
                      CssClass="btn btn-danger" 
                            OnClick="btnclear_Click">
                      <i class="fa fa-close"></i>
                      </asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:GridView ID="grid1" runat="server" CssClass="table table-striped border" PageSize="5"
                    AllowPaging="True" DataKeyNames="ProductId" GridLines="None"
                    ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" 
                 OnRowEditing="grid1_RowEditing"
                    OnPageIndexChanging="grid1_PageIndexChanging">
                    <EmptyDataTemplate>
                        <div class="alert alert-warning">
                            your search did not yield any results.
                        </div>
                    </EmptyDataTemplate>
                    <PagerStyle CssClass="pagination pagination-sm" HorizontalAlign="Center" BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerSettings Mode="Numeric" Position="TopAndBottom" PageButtonCount="5" />
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:ButtonField CommandName="Edit" ButtonType="Link"
                            ItemStyle-CssClass="btn btn-outline-light"
                            DataTextField="ProductName" HeaderText="Product Name" >
                        </asp:ButtonField>
                        <asp:BoundField HeaderText="Unit Price" DataFormatString="{0:C2}" DataField="UnitPrice" />
                    </Columns>
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </div>
        </div>
        <div class="row">
            <div class="col-8 offset-2 text-center">
                <asp:Button ID="btnCreateNew" runat="server" Text="Add New Button"
                    CssClass="btn btn-dark btn-lg p-2" OnClick="btnCreateNew_Click" />
            </div>

        </div>
    </section>

</asp:Content>
