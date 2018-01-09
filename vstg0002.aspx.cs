using System;
using System.Activities;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace $safeprojectname$
{
    
    public partial class Diseño : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void eventos(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            if (b == btniniciar)
            {
                Response.Redirect("Login.aspx");
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



        }
        protected void rdblisttipo_SelectedIndexChanged(object sender, EventArgs e) 
        {
            String value = rdblisttipo.SelectedItem.Value.ToString();
            if (value=="1") {
                imgmarco.ImageUrl = "../Imagenes/marco_ca.png";
                imgrueda1.ImageUrl = "../Imagenes/rueda_ca2.png";
                ClientScript.RegisterStartupScript(GetType(), "mostrarmensaje", "tt();", true);
            }
            else if (value == "2")
            {
                imgmarco.ImageUrl = "../Imagenes/marco_ca2.png";
                imgrueda1.ImageUrl = "../Imagenes/rueda_ca1.png";
                ClientScript.RegisterStartupScript(GetType(), "mostrarmensaje", "tt();", true);
            }
            else if (value == "3") {

                imgmarco.ImageUrl = "../Imagenes/marco_cownhill.png";
                imgrueda1.ImageUrl = "../Imagenes/rueda_ca2.png";
                ClientScript.RegisterStartupScript(GetType(), "mostrarmensaje", "tt();", true);
            }
            else if (value == "4") {
                imgmarco.ImageUrl = "../Imagenes/marco_bmx1.png";
                imgrueda1.ImageUrl = "../Imagenes/rueda_ca1.png";
                ClientScript.RegisterStartupScript(GetType(), "mostrarmensaje", "tt();", true);
            }
        }
    }
}