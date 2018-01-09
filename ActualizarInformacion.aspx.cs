using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace $safeprojectname$
{
    public partial class ActualizarInformacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calendar.Visible = false;
                lblnameuser.Text = Page.Session["user"].ToString();
                txtusername.Text = Page.Session["user"].ToString();
                txtnombre.Text = Page.Session["nameuser"].ToString();
                txtapellido.Text = Page.Session["apellidouser"].ToString();
                txtcorreo.Text = Page.Session["correouser"].ToString();
                txtdate.Text = Page.Session["fdnuser"].ToString();
                txtpass.Text = Page.Session["pass"].ToString();
                txtnombre.Enabled = false;
                txtapellido.Enabled = false;
                txtcorreo.Enabled = false;
                txtpass.Enabled = false;
                txtdate.Enabled = false;
                txtusername.Enabled = false;
                imgbtn.Enabled = false;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (calendar.Visible)
            {

                calendar.Visible = false;
            }
            else
            {
                calendar.Visible = true;
            }
        }


        protected void calendar_SelectionChanged1(object sender, EventArgs e)
        {
            txtdate.Text = calendar.SelectedDate.ToString("yyy/MM/dd");
            calendar.Visible = false;
        }

        protected void eventos(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            if (b == btnaceptar) {
                string cn = @"server=localhost;user=root;password=mysql97;database=paginaweb";
                MySqlConnection con = new MySqlConnection(cn);
                MySqlCommand comando = new MySqlCommand();
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "actualizarinfo";
         
                comando.Parameters.AddWithValue("@nameuser", txtnombre.Text);
                comando.Parameters.AddWithValue("@apellidouser", txtapellido.Text);
                comando.Parameters.AddWithValue("@passuser", txtpass.Text);
                comando.Parameters.AddWithValue("@correouser", txtcorreo.Text);
                comando.Parameters.AddWithValue("@fdnuser", txtdate.Text = calendar.SelectedDate.ToString("yyy/MM/dd"));
                comando.Connection = con;
                try
                {
                    con.Open();
                    comando.ExecuteNonQuery();
                    Response.Redirect("Inicio.aspx");

                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();

                }

            
            Response.Redirect("Inicio.aspx");
            } else if (b==bntactualizar) {
                txtnombre.Enabled = true;
                txtapellido.Enabled = true;
                txtcorreo.Enabled = true;
                txtpass.Enabled = true;
                txtdate.Enabled = true;
                imgbtn.Enabled = true;
                bntactualizar.Enabled = false;
                bntactualizar.Visible = false;
            }
        }
    }
}