<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="brugere.aspx.cs" Inherits="bootstraptest.brugere" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataBrugere" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [brugere] ORDER BY [navn]"></asp:SqlDataSource>

    <table class="table table-striped">

        <tr>
            <th>Id</th>
            <th>Navn</th>
            <th>Email</th>
            <th>Telefon</th>
            <th>Password</th>
        </tr>

    <asp:Repeater ID="RepeaterBrugere" DataSourceID="SqlDataBrugere" runat="server"></asp:Repeater>

    


        <>

            <tr>
                <th><%# Eval ("Id") %></th>
                <th><%# Eval ("navn") %></th>
                <th><%# Eval ("email") %></th>
                <th><%# Eval ("telefon") %></th>
                <th><%# Eval ("password") %></th>
            </tr>

        </>



    </table>

</asp:Content>
