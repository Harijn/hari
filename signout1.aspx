<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signout1.aspx.cs" Inherits="asp.net1.signout1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


       <section class="jumbotron">
       <div class="display-1">you have loged out. you will have to
            <asp:HyperLink ID="link1" runat="server" Text="re-login"
                NavigateUrl="~/signinform1.aspx" /> to access the site.

            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
</section>



      


</asp:Content>
