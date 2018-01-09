using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace $safeprojectname$
{
    public partial class Registro : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                calendar.Visible = false;
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

        protected void bntcrearuser_Click(object sender, EventArgs e)
        {
            string cn = @"server=localhost;user=root;password=mysql97;database=paginaweb";
            MySqlConnection con = new MySqlConnection(cn);
            MySqlCommand comando = new MySqlCommand();
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = "crearcuenta";
            comando.Parameters.AddWithValue("@user", txtusername.Text);
            comando.Parameters.AddWithValue("@nameuser", txtnombre.Text);
            comando.Parameters.AddWithValue("@apellidouser", txtapellido.Text);
            comando.Parameters.AddWithValue("@passuser", txtcpass.Text);
            comando.Parameters.AddWithValue("@correouser", txtcorreo.Text);
            comando.Parameters.AddWithValue("@genero", rdbgenero.SelectedItem.Value);
            comando.Parameters.AddWithValue("@fdnuser", txtdate.Text);
            comando.Connection = con;
            try
            {
                con.Open();
                comando.ExecuteNonQuery();
                Response.Redirect("Login.aspx");

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

        }
    }
    }
