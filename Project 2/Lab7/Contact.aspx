<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Contact.</h2>
    <h3>Στοιχεία Εταιρίας.</h3>
    <p>&nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" PageSize="3" Width="330px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="CompanyId" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="330px">
            <EditItemTemplate>
                CompanyId:
                <asp:Label ID="CompanyIdLabel1" runat="server" Text='<%# Eval("CompanyId") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                StartDate:
                <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
                <br />
                Limit:
                <asp:TextBox ID="LimitTextBox" runat="server" Text='<%# Bind("Limit") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                CompanyId:
                <asp:TextBox ID="CompanyIdTextBox" runat="server" Text='<%# Bind("CompanyId") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                StartDate:
                <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
                <br />
                Limit:
                <asp:TextBox ID="LimitTextBox" runat="server" Text='<%# Bind("Limit") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                CompanyId:
                <asp:Label ID="CompanyIdLabel" runat="server" Text='<%# Eval("CompanyId") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                StartDate:
                <asp:Label ID="StartDateLabel" runat="server" Text='<%# Bind("StartDate", "{0:d}") %>' />
                <br />
                Limit:
                <asp:Label ID="LimitLabel" runat="server" Text='<%# Bind("Limit") %>' />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringComp %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Company]">
        </asp:SqlDataSource>
    </p>
    
</asp:Content>
