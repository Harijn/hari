<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="outputcaching1.aspx.cs" Inherits="asp.net1.outputcaching1" %>
<%@ OutputCache Duration="20" VaryByParam="None"%>
<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container">
        <h2 class="bg-dark text-light text-center p-2">
            <%=DateTime.Now.ToString() %>
            <%--INline Code Expression--%>
        </h2>
        <uc1:WebUserControl1 runat="server" id="WebUserControl1" />

    </section>

</asp:Content>
