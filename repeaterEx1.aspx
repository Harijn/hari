<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="repeaterEx1.aspx.cs" Inherits="asp.net1.repeaterEx1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container">
        <div class="h2 bg-success text-white">Repeaters Example 1</div>
        <div class="row">
            <div class="col">
                <asp:Repeater ID="repeater1" runat="server">
                    <HeaderTemplate>
                        <h4 class="bg-dark text-light">Customer List</h4>
                        <div class="row">
                    </HeaderTemplate>
                    <FooterTemplate>
                        </div>
                        <h6 class="bg-info text-dark text-right p-1">End of List</h6>
                    </FooterTemplate>
                    <ItemTemplate>
                        <div class="col-3 border">
                        The Customer<%#DataBinder.Eval(Container.DataItem,"CompanyName") %>,reprasented by <%# DataBinder.Eval(Container.DataItem,"CompanyName")%> is located in <%#DataBinder.Eval(Container,"DataItem.City")%>
                        ,<%#DataBinder.Eval(Container,"DataItem.Country") %>.
                            <br />
                            <br />
                        <asp:LinkButton ID="link1" runat="server" CssClass="btn btn-outline-primary btn-sm w-100" Text="View Details"
                            CommandName="View" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId")%>' />
                   </div>
                            </ItemTemplate>
                 
             
                    <AlternatingItemTemplate>
                        <div class="bg-light col-3 border">

                                <ItemTemplate>
                        The Customer<%#DataBinder.Eval(Container.DataItem,"CompanyName") %>,reprasented by <%# DataBinder.Eval(Container.DataItem,"CompanyName")%> is located in <%#DataBinder.Eval(Container,"DataItem.City")%>
                        ,<%#DataBinder.Eval(Container,"DataItem.Country") %>.
                                    <br />
                                    <br />
               
                        <asp:LinkButton ID="link1" runat="server" CssClass="btn btn-outline-primary btn-sm w-100" Text="View Details"
                            CommandName="View" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId")%>' />
                    </ItemTemplate>

                        </div>
                    </AlternatingItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>

</asp:Content>
