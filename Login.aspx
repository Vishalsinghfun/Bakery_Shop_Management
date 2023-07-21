<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
        .auto-style2 {
            width: 100%;
            height: 375px;
        }
        .auto-style3 {
        text-align: right;
        width: 576px;
    }
        .auto-style4 {
            height: 15px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
        width: 576px;
    }
        .auto-style7 {
        height: 15px;
        width: 576px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Login" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    
     <table class="auto-style2">
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="UserName:-"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Password:-"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style7"></td>
             <td class="auto-style4">
                 <asp:RadioButtonList ID="rdButtonSelect" runat="server" Font-Bold="True" Font-Size="Medium">
                     <asp:ListItem Value="1">Login as User</asp:ListItem>
                     <asp:ListItem Value="2">Login as Admin</asp:ListItem>
                 </asp:RadioButtonList>
             </td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>
                <asp:Button ID="Button1" runat="server" BackColor="#33CC33" BorderColor="#66FF33" Text="Submit" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click"  />

             </td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>
                <asp:Label ID="lblstatus" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style7"></td>
             <td class="auto-style4"></td>
         </tr>
     </table>
    
</asp:Content>

