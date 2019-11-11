<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="validators.aspx.cs" Inherits="asp.net1.validators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function myValidation(s, e) {
            if (e.value.length > 4) {
                e.IsValid = true;
            } else {
                e.IsValid = false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
        <h2 class="bg-success text-white font-weight-bold text-center">Working with validators</h2>
        <asp:ValidationSummary id="sum1" runat="server" DisplayMode="List" ShowSummary="true" CssClass="alert alert-danger"
            HeaderText="Errors"/>


        <div class="row">
            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Required Field Validate</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:TextBox ID="txtName" CssClass="form-control" runat="server" placeholder="entername" />
                            <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtName" Text="*"
                                Display="Static" ErrorMessage="Name is Required." CssClass="text-danger" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning"> Compare Validate</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox id="Txtpwd" cssclass="form-control" runat="server" placeholder="enterpassword" />
                             <asp:Textbox id="Txtconfirm" cssclass="form-control" runat="server" placeholder="conform password" />
                            <asp:CompareValidator ID="cv1" runat="server" ControlToValidate ="txtName"
                                display="Static" Text="*"  ErrorMessage="password do not match." CssClass="text-danger" ControlToCompare="txtpwd" Operator="Equal" Type="String"/>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning"> Compare Validate</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox id="txtDate" cssclass="form-control" runat="server" placeholder="enter birthdate" />
                            <asp:CompareValidator ID="cv2" runat="server" ControlToValidate ="txtDate"
                              Text="*"  display="Static"   ErrorMessage="Invalid Date." CssClass="text-danger" Operator="DataTypeCheck" Type="Date" />

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning"> Compare Validate</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox id="TxtAge" cssclass="form-control" runat="server" placeholder="enter Age" />
                            <asp:RangeValidator ID="rv1" runat="server" ControlToValidate ="TxtAge"
                              Text="*"  display="Static"   ErrorMessage="Age should be between 18 and 100." CssClass="text-danger"  Type="Integer" MinimumValue="18" MaximumValue="100" />

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning"> regular expression</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox id="txtEmail" cssclass="form-control" runat="server" placeholder="enter Email" />
                            <asp:RegularExpressionValidator ID="rge1" runat="server" ControlToValidate ="txtEmail"
                              Text="*"  display="Static"   ErrorMessage="Invalid Email Format." CssClass="text-danger"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning"> custom validation</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox id="txtUserId" cssclass="form-control" runat="server" placeholder="enter a valid user id" />
                            <asp:CustomValidator ID="cv3" runat="server" ControlToValidate ="txtUserId"
                              Text="*"  display="Static"   ErrorMessage="user id should be 5 or more letters." CssClass="text-danger"  ClientValidationFunction="myValidation" OnServerValidate="cv3_ServerValidate" />

                        </div>
                    </div>
                </div>
            </div>


        </div>
        <div class="row">
            <div class="col-12 text-center">
                <button class="btn btn-outline-danger">submit</button>
            </div>
        </div>
    </section>

</asp:Content>
