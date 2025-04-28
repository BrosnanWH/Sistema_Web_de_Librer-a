using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_Web_de_Librería
{
    public partial class Resumen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Verificar si los datos están en la sesión
                if (Session["NombreCliente"] != null && Session["Subtotal"] != null && Session["Total"] != null)
                {
                    // Recuperar los datos de la sesión
                    string nombreCliente = Session["NombreCliente"].ToString();
                    decimal subtotal = (decimal)Session["Subtotal"];
                    decimal total = (decimal)Session["Total"];

                    // Mostrar los datos en los labels
                    lblNombreCliente.Text = nombreCliente;
                    lblSubtotal.Text = subtotal.ToString("C");
                    lblTotal.Text = total.ToString("C");
                }
                else
                {
                    // Si no hay datos en la sesión, redirigir a la página principal
                    Response.Redirect("Default.aspx");
                }
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // Redirigir a la página principal
            Response.Redirect("Default.aspx");
        }
    }
}