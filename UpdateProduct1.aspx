<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProduct1.aspx.cs" Inherits="asp.net1.UpdateProduct1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container mb-5">
        <h2 class="bg-success text-white text-center">Update product details</h2>
        <div class="row">

            <div class="col-4 offset-2">
                <div class="form-group">
                    <asp:Label ID="lblName" runat="server" CssClass="col-form-label text-dark"
                        Text="Product Name" />
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                </div>
        </div>
        <div class="col-4">
            <div class="form-group">
                <asp:Label ID="lblprice" runat="server" CssClass="col-form-label text-dark"
                    Text="Unit Price" />
                <asp:TextBox ID="txtprice" runat="server" CssClass="form-control" />
            </div>
        </div>
        </div>
        <div class="row">
            <div class="col-4 offset-2">
                <div class="form-group">
                    <asp:Label ID="lblStock" runat="server" CssClass="col-form-label text-dark"
                        Text="Units In Stock" />
                    <asp:TextBox ID="txtStock" runat="server" CssClass="form-control" />
                </div>
            </div>


            <div class="col-4">
                <div class="form-group">
                    <asp:Label ID="lblcatg" runat="server" CssClass="col-form-label text-dark"
                        Text="Category" />
                    <asp:DropDownList ID="ddlCategories" runat="server" CssClass="form-control" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-4 offset-2">
                <div class="form-group">
                    <asp:Label ID="lblDisContinued" runat="server" CssClass="col-form-label text-dark"
                        Text="Discontinued" />
                    <asp:CheckBox ID="chkDiscontinued" runat="server" CssClass="form-control" />
                </div>
            </div>
      

    

            <div class="col-8 offset-2">
                <asp:LinkButton ID="btnUpdate" runat="server" CssClass="btn btn-primary m-1 p-2"
                    OnClick="btnUpdate_Click">
                    <i class="fa fa-save"></i>Update
                </asp:LinkButton>
                <asp:LinkButton ID="btnCancel" runat="server" CssClass="btn btn-secondary m-1 p-2 w-25"
                    OnClick="btnCancel_Click1">
                    <i class="fa fa-sign-out"></i>Discard
                </asp:LinkButton>
            </div>
        </div>



    </section>

</asp:Content>
