<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
         .auto-style2 {
             width: 100%;
             height: 301px;
         }
         .auto-style3 {
             text-align: right;
             width: 539px;
         }
         .auto-style4 {
             width: 539px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Add Product" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>

    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Name:-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Type:-"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownType" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="-1">Select Type</asp:ListItem>
                    <asp:ListItem >Cake</asp:ListItem>
                    <asp:ListItem >Breads</asp:ListItem>
                    <asp:ListItem >Doughnuts</asp:ListItem>
                    <asp:ListItem >Bagels</asp:ListItem>
                    <asp:ListItem >Pies</asp:ListItem>
                    <asp:ListItem >Pastries</asp:ListItem>
                    <asp:ListItem >Pudding</asp:ListItem>
                    <asp:ListItem >Tarts</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownType" ErrorMessage="Select Type" ForeColor="Red" style="font-size: medium" InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Price:-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Description:-"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtboxDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="FoodType:-"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListFoodType" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="-1">Please Select</asp:ListItem>
                    <asp:ListItem >Egg</asp:ListItem>
                    <asp:ListItem >Eggless</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListFoodType" ErrorMessage="Select Food Type" ForeColor="Red" style="font-size: medium" InitialValue="-1"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Image:-"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUploadImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#33CC33" BorderColor="#33CC33" OnClick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

