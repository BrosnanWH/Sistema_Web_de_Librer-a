<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resumen.aspx.cs" Inherits="Sistema_Web_de_Librería.Resumen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <title>Resumen de Compra</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Resumen de Compra</h2>

            <p><strong>Nombre del Cliente:</strong> <asp:Label ID="lblNombreCliente" runat="server"></asp:Label></p>
            <p><strong>Subtotal:</strong> <asp:Label ID="lblSubtotal" runat="server"></asp:Label></p>
            <p><strong>Total (con impuesto):</strong> <asp:Label ID="lblTotal" runat="server"></asp:Label></p>

            <br />

            <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
            <br />
            <br />
            By George Herrera.
        </div>
    </form>
<body/>
</html>
