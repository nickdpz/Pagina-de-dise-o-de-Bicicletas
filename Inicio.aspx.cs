using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace $safeprojectname$
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void  Page_Load(object sender, EventArgs e)
        {

                if(Page.Session["nameuser"] !=null)
                {
                btnperfil.Text = Page.Session["nameuser"].ToString();
                btniniciar.Text = "Cerrar";
                btniniciar.CssClass = "btnheader";
                btnperfil.Enabled = true;
                btnperfil.Visible = true;
            }
            else
            {
                
                btnperfil.Enabled = false;
                btnperfil.Visible = false;

            }
               
            
        }

        protected void eventos(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            if (b == btniniciar)
            {
                if (Page.Session["estado"] != null)
                {
                    Session.Abandon();
                    Response.Redirect("Inicio.aspx");
                }
                else { Response.Redirect("Login.aspx"); }

            }
            else if (b == btntenedor)
            {
                Response.Redirect("Registro.aspx");
            }
            else if (b == btnsi)
            {
                Response.Redirect("SitiosdeInteres.aspx");
            }
            else if (b == btncu)
            {
                Response.Redirect("CU.aspx");
            }
            else if (b == btndiseño)
            {
                Response.Redirect("Diseño.aspx");
            }
            else if (b == btnperfil) {
                Response.Redirect("ActualizarInformacion.aspx");
            }

            

        }
    }
}

