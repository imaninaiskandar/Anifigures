<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="Anifigures.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="soloproduct">
    <asp:SqlDataSource ID="ProductList" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnection %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ProductID" DataSourceID="ProductList" ForeColor="Black" GridLines="Vertical" Width="1074px">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductMaker:
            <asp:TextBox ID="ProductMakerTextBox" runat="server" Text='<%# Bind("ProductMaker") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductStock:
            <asp:TextBox ID="ProductStockTextBox" runat="server" Text='<%# Bind("ProductStock") %>' />
            <br />
            ProductImage:
            <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            ProductID:
            <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductMaker:
            <asp:TextBox ID="ProductMakerTextBox" runat="server" Text='<%# Bind("ProductMaker") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductStock:
            <asp:TextBox ID="ProductStockTextBox" runat="server" Text='<%# Bind("ProductStock") %>' />
            <br />
            ProductImage:
            <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <strong>Product ID:</strong>
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            <strong>Product Name:</strong>
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            <strong>Product Maker:</strong>
            <asp:Label ID="ProductMakerLabel" runat="server" Text='<%# Bind("ProductMaker") %>' />
            <br />
            <strong>Product Price:</strong>
            <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            <strong>Product Stock:</strong>
            <asp:Label ID="ProductStockLabel" runat="server" Text='<%# Bind("ProductStock") %>' />
            <br />
            <strong>Product Image:</strong>
            <asp:Label ID="ProductImageLabel" runat="server" Text='<%# Bind("ProductImage") %>' />
            <br />

        </ItemTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:FormView>
   </div>
</asp:Content>
