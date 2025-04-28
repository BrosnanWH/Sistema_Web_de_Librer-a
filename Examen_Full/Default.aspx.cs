using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Web_de_Librería
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Txtboxnombre_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            // Validar si los campos son correctos
            if (Page.IsValid)
            {
                // Obtener los valores del formulario
                string nombreCliente = txtNombre.Text;
                int precio = int.Parse(txtPrecio.Text);
                int cantidad = int.Parse(txtCantidad.Text);

                // Calcular el subtotal
                decimal subtotal = precio * cantidad;

                // Calcular el total (subtotal + 15% de impuesto)
                decimal impuesto = subtotal * 0.15m;
                decimal total = subtotal + impuesto;

                // Guardar los datos en la sesión
                Session["NombreCliente"] = nombreCliente;
                Session["Subtotal"] = subtotal;
                Session["Total"] = total;

                // Redirigir a la página Resumen.aspx
                Response.Redirect("Resumen.aspx");
            }
    }
}
}