<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="manage.aspx.cs" Inherits="Anifigures.admin.manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="article" runat="server">

    <p>Return to the <a href="../default.aspx">main site</a>?</p>

    <h1>Product Management</h1>
    
        <div class="formview">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="ProductSource" DefaultMode="Insert" Width="1284px">
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
                <InsertItemTemplate>
                    ProductID:
                    <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    <br />
                    Product Name:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    <br />
                    Product Maker:
                    <asp:TextBox ID="ProductMakerTextBox" runat="server" Text='<%# Bind("ProductMaker") %>' />
                    <br />
                    <br />
                    Product Price:
                    <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                    <br />
                    <br />
                    Product Stock:
                    <asp:TextBox ID="ProductStockTextBox" runat="server" Text='<%# Bind("ProductStock") %>' />
                    <br />
                    <br />
                    Product Image:
                    <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                    <br />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ProductID:
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    ProductMaker:
                    <asp:Label ID="ProductMakerLabel" runat="server" Text='<%# Bind("ProductMaker") %>' />
                    <br />
                    ProductPrice:
                    <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
                    <br />
                    ProductStock:
                    <asp:Label ID="ProductStockLabel" runat="server" Text='<%# Bind("ProductStock") %>' />
                    <br />
                    ProductImage:
                    <asp:Label ID="ProductImageLabel" runat="server" Text='<%# Bind("ProductImage") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <br />
        </div>

    <div class="gridview">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="ProductSource" Width="1548px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="ProductMaker" HeaderText="ProductMaker" SortExpression="ProductMaker" />
            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
            <asp:BoundField DataField="ProductStock" HeaderText="ProductStock" SortExpression="ProductStock" />
            <asp:BoundField DataField="ProductImage" HeaderText="ProductImage" SortExpression="ProductImage" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="ProductSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnection %>" DeleteCommand="DELETE FROM [products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [products] ([ProductID], [ProductName], [ProductMaker], [ProductPrice], [ProductStock], [ProductImage]) VALUES (@ProductID, @ProductName, @ProductMaker, @ProductPrice, @ProductStock, @ProductImage)" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [ProductName] = @ProductName, [ProductMaker] = @ProductMaker, [ProductPrice] = @ProductPrice, [ProductStock] = @ProductStock, [ProductImage] = @ProductImage WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductMaker" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Int32" />
            <asp:Parameter Name="ProductStock" Type="String" />
            <asp:Parameter Name="ProductImage" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductMaker" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Int32" />
            <asp:Parameter Name="ProductStock" Type="String" />
            <asp:Parameter Name="ProductImage" Type="String" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>

    <h1>Upload Image</h1>
     <p><b>Your uploaded image will be located at the "/image/figures/" directory.</b></p>
    <asp:FileUpload ID="uploadImage" runat="server" />
    <asp:Button ID="buttonUploadImage" runat="server" Text="Upload" OnClick="buttonUploadImage_Click" />

    <p><b><asp:Label ID="uploadSuccess" runat="server" Text=""></asp:Label></b></p>

</asp:Content>
