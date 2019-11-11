<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="datalistEx1.aspx.cs" Inherits="asp.net1.DataList1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <%-- // <section class="container">
        <div class="h2 bg-success text-white">DataList Example 1 </div>
        <div class="row">
            <div class="col">
                <asp:DataList ID="datalist1" runat="server" OnItemCommand="datalist1_ItemCommand"
                    OnEditCommand="datalist1_EditCommand"
                    OnUpdateCommand="datalist1_UpdateCommand"
                    OnDeleteCommand="datalist1_DeleteCommand"
                    OnCancelCommand="datalist1_CancelCommand"
                    RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Table">
                    <HeaderTemplate>
                        <h4 class="bg-dark text-light">Customer List</h4>
                        <table class="table table-dark">
                            <thead>
                                <tr>
                                    <th>Company Name</th>
                                    <th>Contact Name</th>
                                    <th>City</th>
                                    <th>Country</th>
                                    <th> </th>
                                </tr>
                            </thead>
                                              
                    </HeaderTemplate>
                    <FooterTemplate>
                        <tfoot>
                            <tr>
                                <td colspan="5" class="bg-info text-dark text-right p-1">End of List</td>
                            </tr>
                        </tfoot>
                        </table>
                      
                    </FooterTemplate>

                    <ItemTemplate>
                       <tr>
                            <td><%#DataBinder.Eval(Container.DataItem,"CompanyName") %></td>
                           
                       <td><%#DataBinder.Eval(Container.DataItem,"ContactName")%></td>
                        <td> <%#DataBinder.Eval(Container,"DataItem.City") %></td>
                       <td><%#DataBinder.Eval(Container,"DataItem.Country")%></td>
                     <br />

                        <asp:LinkButton ID="link1" runat="server"
                            CssClass="btn btn-outline-primary btn-sm w-100" Text="View Details"
                            CommandName="Edit"
                            CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId")%>' /></td>
                     </tr>
                    </ItemTemplate>

                    <AlternatingItemTemplate>
                        <tr>
                            <td><%#DataBinder.Eval(Container.DataItem,"CompanyName") %></td>
                      <td> <%#DataBinder.Eval(Container.DataItem,"ContactName") %></td>
                       <td>   <%#DataBinder.Eval(Container,"DataItem.City") %></td>
                        <td> <%#DataBinder.Eval(Container,"DataItem.Country") %></td>
                        <td> 
                        <asp:LinkButton ID="link1" runat="server"
                            CssClass="btn btn-outline-primary btn-sm w-100" Text="View Details"
                            CommandName="View"
                            CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>' /> </td> 
                          </tr>
                     
                    </AlternatingItemTemplate>



                    <EditItemTemplate>
                        <table class="table-sm">
                            <tr>
                                <td>company:</td>
                                    <td>
                                    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control"
                                        Text='<%#DataBinder.Eval(Container.DataItem,"CmpanyName")%>'/>
                                    
                                </td>

                            </tr>
                            <tr>
                                <td>ContactName:</td>
                                <td>
                                    <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control"
                                        Text='<%#DataBinder.Eval(Container.DataItem,"ContactName")%>' />
                                </td>
                            </tr>
                             <tr>
                                <td>City:</td>
                                <td>
                                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control"
                                        Text='<%#DataBinder.Eval(Container.DataItem,"City")%>' />
                                </td>
                            </tr>
                             <tr>
                                <td>Country:</td>
                                <td>
                                    <asp:TextBox ID="txtcountry" runat="server" CssClass="form-control"
                                        Text='<%#DataBinder.Eval(Container.DataItem,"Country")%>' />
                                </td>
                            </tr>
                            
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update"
                                        CommandName="Update" CssClass="btn btn-sm btn-success " />
                                    <asp:Button ID="btnCancel" runat="server" Text="Discard"
                                        CommandName="Cancel" CssClass="btn btn-sm btn-secondary " />
                                </td>
                            </tr>
                        </table>
                    </EditItemTemplate>


                </asp:DataList>
            </div>
        </div>
    </section>--%>


    
    <section class="container">
        <div class="h2 bg-success text-white">Data List Example 1</div>
        <div class="row">
            <div class="col">
                <asp:DataList ID="dataList1" runat="server" RepeatColumns="4"
                    RepeatLayout="Table" RepeatDirection="Horizontal"
                    
                    OnItemCommand="dataList1_ItemCommand1"
                    OnEditCommand="dataList1_EditCommand"
                    OnUpdateCommand="dataList1_UpdateCommand"
                    OnCancelCommand="dataList1_CancelCommand"
                    OnDeleteCommand="dataList1_DeleteCommand">


                    <HeaderTemplate>
                        <h4 class="bg-dark text-light">Customer List</h4>
                    </HeaderTemplate>
                    <FooterTemplate>
                        <h6 class="bg-info text-dark text-right p-1">End Of List</h6>
                    </FooterTemplate>
                    <ItemTemplate>
                        <div class="border m-0 p-2">
                            The Customer <%# DataBinder.Eval(Container.DataItem,"CompanyName") %>
                        ,represented by <%# DataBinder.Eval(Container.DataItem,"ContactName") %>
                        ,is located in <%# DataBinder.Eval(Container.DataItem,"City") %>,
                        <%#DataBinder.Eval(Container,"DataItem.Country") %>.
                            <br />
                            <div class="mt-2 mb-2 d-flex h">
                                <asp:LinkButton ID="editLink1" runat="server" Text="Modify"
                                    CssClass="btn btn-success btn-sm w-50" CommandName="Edit"
                                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'>
                                </asp:LinkButton>
                                <asp:LinkButton ID="link1" runat="server"
                                    CssClass="btn btn-danger btn-sm w-50" Text="ViewDetails" CommandName="View"
                                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <div class="bg-light border m-0 p-2">
                            The Customer <%# DataBinder.Eval(Container.DataItem,"CompanyName") %>
                        ,represented by <%# DataBinder.Eval(Container.DataItem,"ContactName") %>
                        ,is located in <%# DataBinder.Eval(Container.DataItem,"City") %>,
                        <%#DataBinder.Eval(Container,"DataItem.Country") %>.
                            <br />
                            <div class="mt-2 mb-2 d-flex  h">
                                <asp:LinkButton ID="editLink1" runat="server" Text="Modify"
                                    CssClass="btn btn-success btn-sm w-50" CommandName="Edit"
                                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'>
                                </asp:LinkButton>
                                <asp:LinkButton ID="link1" runat="server"
                                    CssClass="btn btn-danger btn-sm w-50" Text="ViewDetails" CommandName="View"
                                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </AlternatingItemTemplate>


                    <EditItemTemplate>
                        <table class="table-sm">
                            <tr>
                                <td>Company: </td>
                                <td>
                                    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" 
                                        Text='<%#DataBinder.Eval(Container.DataItem,"CompanyName") %>'/>
                                </td>
                                 <td>Contact: </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" 
                                        Text='<%#DataBinder.Eval(Container.DataItem,"ContactName") %>'/>
                                </td>
                                 <td>City: </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" 
                                        Text='<%#DataBinder.Eval(Container.DataItem,"City") %>'/>
                                </td>
                                 <td>Country: </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" 
                                        Text='<%#DataBinder.Eval(Container.DataItem,"Country") %>'/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update"
                                        CommandName="Update" CssClass="btn btn-sm btn-success " />
                                    <asp:Button ID="btnCancel" runat="server" Text="Discard"
                                        CommandName="Cancel" CssClass="btn btn-sm btn-secondary " />
                                </td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </section>






</asp:Content>
