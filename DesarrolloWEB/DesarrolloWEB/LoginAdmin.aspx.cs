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
            
        }

        protected void BotonLogin_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
            {
                Response.Redirect("IngresoHabitacion.aspx");
            }

            else
            {
                TextBox3.Visible = true;
                TextBox3.Text = "Incorrecto";
            } 
    
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void BotonConsulta_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
            {
                Response.Redirect("ConsultaReserva.aspx");
            }

            else
            {
                TextBox3.Visible = true;
                TextBox3.Text = "Incorrecto";
            }

           
        }
    }
}