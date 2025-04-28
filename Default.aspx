<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sistema_Web_de_Librería._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Sistema Web de Librería </h1>
        <p class="lead">Bienvenido a tu sistema de librerias web preferido, por favor ingresa tu nombre, precio del libro a comprar y la cantidad.</p>
        <p class="lead">Nombre:
            <asp:TextBox ID="txtNombre" runat="server" OnTextChanged="Txtboxnombre_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" 
                                        ErrorMessage="El nombre es obligatorio" ForeColor="Red" />
        </p>
        <p class="lead">Cantidad: <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cvCantidad" runat="server" ControlToValidate="txtCantidad" 
                                  Operator="GreaterThan" Type="Integer" ValueToCompare="0" 
                                  ErrorMessage="La cantidad debe ser mayor que 0" ForeColor="Red" />

        </p>
        <p class="lead">Precio del Libro:
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="rvPrecio" runat="server" ControlToValidate="txtPrecio" 
                                MinimumValue="1" MaximumValue="999999" Type="Integer" 
                                ErrorMessage="El precio debe estar entre 1 y 100000" ForeColor="Red" />
        </p>
        <p class="lead">&nbsp;</p>
        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" Width="135px" />
    </div>

</asp:Content>
