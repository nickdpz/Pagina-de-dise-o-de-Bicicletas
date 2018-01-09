using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace $safeprojectname$
{
    public partial class CU : System.Web.UI.Page
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
    }
}