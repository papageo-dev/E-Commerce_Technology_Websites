<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="color: #FFFFFF"><%: Title %>.</h2>
    <h3 style="color: #FFFFFF">Your contact page.</h3>
    <address style="color: #FFFFFF">
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address style="color: #FFFFFF">
        <strong>Support:</strong>   <a href="mailto:Support@example.com" style="color: #FF00FF">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com" style="color: #FF00FF">Marketing@example.com</a>
    </address>
</asp:Content>
