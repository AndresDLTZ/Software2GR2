using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DesarrolloWEB
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox2.PasswordChar = '*';
            //TextBox2.MaxLength = 20;
        }

        protected void BotonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("IngresoHabitacion.aspx");
            /*TextBox3.Text = "";
            TextBox3.Visible = false;

            string consulta = "select nombreusuario from usuario where nombreusuario like '" + TextBox1.Text + "' and contraseniausuario like '" + TextBox2.Text + "'";
            DataTable consultaregreso;
            ConsultasBaseDatos consu = new ConsultasBaseDatos();
            consultaregreso = consu.consultar(consulta);

            if (consultaregreso.Rows.Count > 0)
            {
                Response.Redirect("IngresoHabitacion.aspx");
            }

            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Visible = true; ;
                TextBox3.Text = "Credenciales Incorrectas";
            }
            */
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}