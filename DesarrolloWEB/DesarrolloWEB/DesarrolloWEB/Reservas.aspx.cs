    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DesarrolloWEB
{
    public partial class Reservas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Botón Buscar
        protected void Buscar_Click(object sender, EventArgs e)
        {
            ConsultasBaseDatos consu = new ConsultasBaseDatos();
            int tipohabitacion = DropDownList4.SelectedIndex+1;
            int precio = int.Parse(TextBox5.Text);
            string consulta = "select NUMEROHABITACION as 'Numero Habitación',DESCRIPCIONHABITACION as Descripción,PRECIOHABITACION as Precio from HABITACION where ESTADOHABITACION = 'Disponible'and IDTIPOHABITACION=1";
            DataTable consultaregreso;
            consultaregreso = consu.consultar(consulta);
            this.GridView1.DataSource = consultaregreso;
            GridView1.Visible = true;
            if (consultaregreso.Rows.Count==0) {
                TextBox10.Text = "no hay habitaciones";
            }
           
            this.GridView1.DataBind();
           


        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}