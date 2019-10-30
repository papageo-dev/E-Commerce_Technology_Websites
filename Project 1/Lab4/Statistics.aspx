<%@ Page Title="Statistics" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Statistics.aspx.cs" Inherits="Statistics" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    </p>
    <p>
        &nbsp;</p>
    <p>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="Button1_Click" BackColor="#CCCCFF"></asp:TextBox>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCFF"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Button" />

    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Yellow"></asp:Label>

    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Yellow"></asp:Label>

    </p>


</asp:Content>
