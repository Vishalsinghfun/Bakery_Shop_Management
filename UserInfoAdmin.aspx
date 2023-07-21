<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="UserInfoAdmin.aspx.cs" Inherits="UserInfoAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Users Information" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="regi_id" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Large" ForeColor="Black" GridLines="Vertical" Height="179px" Width="1053px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="regi_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="regi_id" />
            <asp:BoundField DataField="regi_Fullname" HeaderText="Fullname" SortExpression="regi_Fullname" />
            <asp:BoundField DataField="regi_Username" HeaderText="Username" SortExpression="regi_Username" />
            <asp:BoundField DataField="regi_Email" HeaderText="Email" SortExpression="regi_Email" />
            <asp:BoundField DataField="regi_Password" HeaderText="Password" SortExpression="regi_Password" />
            <asp:BoundField DataField="regi_Gender" HeaderText="Gender" SortExpression="regi_Gender" />
            <asp:BoundField DataField="regi_DOB" HeaderText="DOB" SortExpression="regi_DOB" />
            <asp:BoundField DataField="regi_Contact" HeaderText="Contact" SortExpression="regi_Contact" />
            <asp:BoundField DataField="regi_Address" HeaderText="Address" SortExpression="regi_Address" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBCS %>" DeleteCommand="DELETE FROM [tbl_Registration] WHERE [regi_id] = @original_regi_id AND (([regi_Fullname] = @original_regi_Fullname) OR ([regi_Fullname] IS NULL AND @original_regi_Fullname IS NULL)) AND (([regi_Username] = @original_regi_Username) OR ([regi_Username] IS NULL AND @original_regi_Username IS NULL)) AND (([regi_Email] = @original_regi_Email) OR ([regi_Email] IS NULL AND @original_regi_Email IS NULL)) AND (([regi_Password] = @original_regi_Password) OR ([regi_Password] IS NULL AND @original_regi_Password IS NULL)) AND (([regi_Gender] = @original_regi_Gender) OR ([regi_Gender] IS NULL AND @original_regi_Gender IS NULL)) AND (([regi_DOB] = @original_regi_DOB) OR ([regi_DOB] IS NULL AND @original_regi_DOB IS NULL)) AND (([regi_Contact] = @original_regi_Contact) OR ([regi_Contact] IS NULL AND @original_regi_Contact IS NULL)) AND (([regi_Address] = @original_regi_Address) OR ([regi_Address] IS NULL AND @original_regi_Address IS NULL))" InsertCommand="INSERT INTO [tbl_Registration] ([regi_Fullname], [regi_Username], [regi_Email], [regi_Password], [regi_Gender], [regi_DOB], [regi_Contact], [regi_Address]) VALUES (@regi_Fullname, @regi_Username, @regi_Email, @regi_Password, @regi_Gender, @regi_DOB, @regi_Contact, @regi_Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_Registration] ORDER BY [regi_id] DESC" UpdateCommand="UPDATE [tbl_Registration] SET [regi_Fullname] = @regi_Fullname, [regi_Username] = @regi_Username, [regi_Email] = @regi_Email, [regi_Password] = @regi_Password, [regi_Gender] = @regi_Gender, [regi_DOB] = @regi_DOB, [regi_Contact] = @regi_Contact, [regi_Address] = @regi_Address WHERE [regi_id] = @original_regi_id AND (([regi_Fullname] = @original_regi_Fullname) OR ([regi_Fullname] IS NULL AND @original_regi_Fullname IS NULL)) AND (([regi_Username] = @original_regi_Username) OR ([regi_Username] IS NULL AND @original_regi_Username IS NULL)) AND (([regi_Email] = @original_regi_Email) OR ([regi_Email] IS NULL AND @original_regi_Email IS NULL)) AND (([regi_Password] = @original_regi_Password) OR ([regi_Password] IS NULL AND @original_regi_Password IS NULL)) AND (([regi_Gender] = @original_regi_Gender) OR ([regi_Gender] IS NULL AND @original_regi_Gender IS NULL)) AND (([regi_DOB] = @original_regi_DOB) OR ([regi_DOB] IS NULL AND @original_regi_DOB IS NULL)) AND (([regi_Contact] = @original_regi_Contact) OR ([regi_Contact] IS NULL AND @original_regi_Contact IS NULL)) AND (([regi_Address] = @original_regi_Address) OR ([regi_Address] IS NULL AND @original_regi_Address IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_regi_id" Type="Int32" />
            <asp:Parameter Name="original_regi_Fullname" Type="String" />
            <asp:Parameter Name="original_regi_Username" Type="String" />
            <asp:Parameter Name="original_regi_Email" Type="String" />
            <asp:Parameter Name="original_regi_Password" Type="String" />
            <asp:Parameter Name="original_regi_Gender" Type="String" />
            <asp:Parameter Name="original_regi_DOB" Type="String" />
            <asp:Parameter Name="original_regi_Contact" Type="String" />
            <asp:Parameter Name="original_regi_Address" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="regi_Fullname" Type="String" />
            <asp:Parameter Name="regi_Username" Type="String" />
            <asp:Parameter Name="regi_Email" Type="String" />
            <asp:Parameter Name="regi_Password" Type="String" />
            <asp:Parameter Name="regi_Gender" Type="String" />
            <asp:Parameter Name="regi_DOB" Type="String" />
            <asp:Parameter Name="regi_Contact" Type="String" />
            <asp:Parameter Name="regi_Address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="regi_Fullname" Type="String" />
            <asp:Parameter Name="regi_Username" Type="String" />
            <asp:Parameter Name="regi_Email" Type="String" />
            <asp:Parameter Name="regi_Password" Type="String" />
            <asp:Parameter Name="regi_Gender" Type="String" />
            <asp:Parameter Name="regi_DOB" Type="String" />
            <asp:Parameter Name="regi_Contact" Type="String" />
            <asp:Parameter Name="regi_Address" Type="String" />
            <asp:Parameter Name="original_regi_id" Type="Int32" />
            <asp:Parameter Name="original_regi_Fullname" Type="String" />
            <asp:Parameter Name="original_regi_Username" Type="String" />
            <asp:Parameter Name="original_regi_Email" Type="String" />
            <asp:Parameter Name="original_regi_Password" Type="String" />
            <asp:Parameter Name="original_regi_Gender" Type="String" />
            <asp:Parameter Name="original_regi_DOB" Type="String" />
            <asp:Parameter Name="original_regi_Contact" Type="String" />
            <asp:Parameter Name="original_regi_Address" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

