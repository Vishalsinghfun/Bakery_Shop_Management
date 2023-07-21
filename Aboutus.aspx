<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageLogin.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 54px;
        }
        .auto-style2 {
            width: 100%;
        height: 220px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="About Us" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>

     <table class="auto-style2">
         <tr>
             <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#0033CC" Text="	An online Bakery shop that allows users to check for various bakery products available at the online store and purchase online. The project consists of list of bakery products displayed in various categories. The user may browse through these items as per categories. If the user likes a product he may add it to his shopping cart. Once user wishes to checkout he must register on the site first. He can then login using same id password next time. Now he may pay through a credit card or cash on delivery. Once the user makes a successful transaction he gets a copy of the shopping receipt on his email id. Here we use .net framework to make the entire frontend. The middle tier or code behind model is designed in c#. And SQL serves as a backend to store bakery products lists data. Thus, the online Bakery shopping project brings an entire bakery shop online and makes it easy for both buyer and seller. "></asp:Label>
             </td>
         </tr>
     </table>

</asp:Content>

