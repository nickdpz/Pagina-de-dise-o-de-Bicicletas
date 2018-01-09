using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace $safeprojectname$
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void eventos(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            if (b == btntenedor)
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
        protected void btninicarsecion_Click(object sender, EventArgs e)
        {
            String cuenta = txtusername.Text;
            String contraseña = txtuserpassword.Text;
            string cn = @"server=localhost;user=root;password=mysql97;database=paginaweb";
            DataTable dt = new DataTable();
            using (MySqlConnection con = new MySqlConnection(cn))
            {
                con.Open();
                using (MySqlCommand comando = new MySqlCommand("seleccionarcuenta", con))
                {
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@cuenta", cuenta);
                    comando.Parameters.AddWithValue("@contra", contraseña);
                    using (MySqlDataReader reader = comando.ExecuteReader())
                    {
                        dt.Load(reader);
                        if (dt.Rows.Count > 0)
                        {
                            DataRow row = dt.Rows[0];
                            Page.Session["pass"] = Convert.ToString(row["pasuser"]);                         
                            Page.Session["user"] = Convert.ToString(row["user"]);
                            Page.Session["apellidouser"] = Convert.ToString(row["apellidouser"]);
                            Page.Session["nameuser"] = Convert.ToString(row["nameuser"]);

                            Page.Session["correouser"] = Convert.ToString(row["correouser"]);
                            Page.Session["generouser"] = Convert.ToString(row["generouser"]);
                            Page.Session["fdnuser"] = Convert.ToString(row["fdnuser"]);
                            Response.Redirect("Inicio.aspx");
                        }
                        else
                        {
                            lblerror.Text = "Los datos ingresados no corresponden a ningun usuario";
                        }
                        con.Close();
                        con.Dispose();
                    }
                }
            }
        }
    }
}