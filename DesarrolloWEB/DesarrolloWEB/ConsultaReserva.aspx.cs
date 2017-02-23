using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DesarrolloWEB
{
    public partial class ConsultaReserva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonBuscar_Click(object sender, EventArgs e)
        {

            string consulta = "select b.idreserva as 'N° Reserva' , fechareserva as 'Fecha Reserva', subtotalreserva as SubTotal, b.IMPUESTOSRESERVA as Impuesto, totalreserva as Total, fechainicio as 'Fecha de Inicio', fechafin as 'Fecha de Fin', numerohuespedes as 'N° Huespedes', nombrecliente as 'Nombre Cliente', pasaportecliente as Pasaporte, telefonocliente as Telefono, mailcliente as mail from cliente a, reserva b where a.dicliente = b.dicliente and b.idreserva = (select max(idreserva) from reserva)";
            ConsultasBaseDatos consu = new ConsultasBaseDatos();
            DataTable consultaregreso;

            consultaregreso = consu.consultar(consulta);
            this.GridView1.DataSource = consultaregreso;
            GridView1.Visible = true;
            this.GridView1.DataBind();
       
            consultaregreso = consu.consultar(consulta);
            if (consultaregreso.Rows.Count > 0)
            {
                DataRow row = consultaregreso.Rows[0];
                TextBox1.Text = row["Nombre Cliente"].ToString();

            }
          

            string consulta3 = "select nombretipohabitacion as 'Tipo Habitación', numerohabitacion as 'N° Habitación', descripcionhabitacion as Descripción, preciohabitacion as Precio, numeropiso as 'N° Piso' from tipohabitacion a, habitacion b, DETALLERESERVA c, reserva d, cliente e where e.DICLIENTE = d.DICLIENTE and d.IDRESERVA = c.IDRESERVA and b.IDHABITACION = c.IDHABITACION and a.IDTIPOHABITACION = b.IDTIPOHABITACION and NOMBRECLIENTE like '"+TextBox1.Text+"'";
            DataTable consultaregreso3;

            consultaregreso3 = consu.consultar(consulta3);
            this.GridView2.DataSource = consultaregreso3;
            GridView2.Visible = true;
            this.GridView2.DataBind();

            string consulta4 = "select nombreasociado as 'Nombre de Huésped', pasaporteasociado as 'Número de Pasaporte' from cliente a, CLIENTEASOCIADO b where a.DICLIENTE = b.DICLIENTE and NOMBRECLIENTE like '" + TextBox1.Text + "'";
            DataTable consultaregreso4;

            consultaregreso4 = consu.consultar(consulta4);
            this.GridView3.DataSource = consultaregreso4;
            GridView3.Visible = true;
            this.GridView3.DataBind();
        }
    }
}