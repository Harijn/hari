<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="statemanagement1.aspx.cs" Inherits="asp.net1.statemanagement1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
        <h2 class="bg-success text-white text-center">State Management</h2>
        <hr />
        Application Counter:=<asp:Label ID="lblApplication" runat="server" Font-Bold="true" />
        <br />
        Session Counter:=<asp:Label ID="lblSession" runat="server" Font-Bold="true" />
        <br />
        <br />
        <div class="border:1px solid black;">
            <div style="background-color: deepskyblue; color: white; font-weight: bold; padding: 2px; width: 100%; border-bottom: 1px solid black">
                Working with Cookies
            </div>
            <div style="padding: 10px">
                <asp:Label ID="lblName" runat="server" Text="cookie Name:" Width="150px" />
                <asp:TextBox ID="txtName" runat="server" BorderColor="Wheat"
                    BorderStyle="Dotted" BorderWidth="2px" />
                <br />

                <asp:Label ID="Label1" runat="server" Text="cookie value:" Width="150px" />
                <asp:TextBox ID="txtvalue" runat="server" BorderColor="Wheat"
                    BorderStyle="Dotted" BorderWidth="2px" />
                <br />
                <br />

                <asp:Button ID="btnStore" runat="server" Text=" Store cookie:" BackColor="YellowGreen"
                    ForeColor="Red" Font-Bold="true" BorderColor="Blue" BorderStyle="Groove" BorderWidth="1px"
                    OnClick="btnStore_Click" />

                <asp:Button ID="btnRetrieve" runat="server" OnClick="btnRetrieve_Click" Text="Retrieve Cookies" />
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>

            </div>
        </div>
    </section>
</asp:Content>
