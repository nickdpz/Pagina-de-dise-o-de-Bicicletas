<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Diseño.aspx.cs" Inherits="$safeprojectname$.Diseño" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" lang="es">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Diseño</title>
    <link href="CSS/InicioStyle.css" rel="stylesheet" />
    <script type="text/javascript">
        function tt() {
            var ctx = document.getElementById("pintura").getContext("2d");

            var imgr1 = document.getElementById("imgrueda1");
            imgr1.onload = function () {
                ctx.drawImage(imgr1, 0, 70, 120, 80);
                ctx.stroke();
            };
            var imgmarco = document.getElementById("imgmarco");
            imgmarco.onload = function () {
                ctx.drawImage(imgmarco, 20, 15, 240, 120);
                ctx.stroke();
            };
        }

    </script>
</head>
<body>
            <form runat="server" id="custombike">
   <header>
        <a title="Inicio" href="Inicio.aspx">
            <asp:Image ID="ImgIcono" runat="server" ImageUrl="~/Imagenes/custom.png" /></a>
        <asp:Button ID="btniniciar" runat="server" Text="Iniciar" OnClick="eventos" />

        <nav> 
             
            <ul>
                <li><asp:Button ID="btnsi" runat="server" CssClass="links" OnClick="eventos" Text="Sitios de Interés" /></li>

               <li><asp:Button ID="btncatalogo" runat="server" CssClass="links" OnClick="eventos" Text="Catalogo" />
                    <ul>
                        <li><asp:Button ID="btnmarcos" runat="server" CssClass="links" OnClick="eventos" Text="Marcos" /></li>
                        <li><asp:Button ID="btnrines" CssClass="links" runat="server" Text="Rines" OnClick="eventos" /></li>
                        <li><asp:Button ID="btnmanubrio" runat="server" CssClass="links" OnClick="eventos" Text="Manubrio" /></li>
                        <li><asp:Button ID="btntenedor" CssClass="links" runat="server" Text="Tenedor" OnClick="eventos" /></li>
                    </ul>
                </li>
                <li><asp:Button ID="btndiseño" CssClass="links" runat="server" Text="Diseño" OnClick="eventos" /></li>
                <li><asp:Button ID="btncu" CssClass="links" runat="server" Text="Consejos de Uso" OnClick="eventos" /></li>
            </ul>

        </nav>


    </header>
    <section>

            <aside id="dcol1">
            </aside>
            <aside id="dcol2">
                <div id="tipobici">
                    <br />
                    <h3>Selecciona tipo de bicicleta que mas te guste</h3>
                    <br />
                    <asp:RadioButtonList ID="rdblisttipo" runat="server" RepeatDirection="Horizontal" Width="660px" OnSelectedIndexChanged="rdblisttipo_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Value="1" Text="Carreras">
                        </asp:ListItem>
                        <asp:ListItem Value="2" Text="Fixed">
                        </asp:ListItem>
                        <asp:ListItem Value="3" Text="Todo Terreno">
                        </asp:ListItem>
                        <asp:ListItem Value="4" Text="BMX">
                        </asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <br />
                <div id="atrabajo">
                    <canvas id="pintura" class="areatrabajo">
                        <asp:Image ID="imgmarco" runat="server"  ImageUrl="~/Imagenes/marco_ca.png" />
                        <asp:Image ID="imgrueda1" runat="server" ImageUrl="~/Imagenes/rueda_ca1.png" />
                        <asp:Image ID="imgrueda2" runat="server" ImageUrl="~/Imagenes/rueda_ca2.png" />
                        <asp:Image ID="imgtimon" runat="server" ImageUrl="~/Imagenes/manubrio_carrera2.png"/>
                    </canvas>

                </div>
            </aside>
            <aside id="dcol3">
                <div>
                    <h4>Seleccione la parte que desea personalizar 
                    </h4>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="220px" Width="100px">
                        <asp:ListItem Selected="True">Marco</asp:ListItem>
                        <asp:ListItem>Tenedor</asp:ListItem>
                        <asp:ListItem>Rines</asp:ListItem>
                        <asp:ListItem>Manubrio</asp:ListItem>
                    </asp:RadioButtonList>
                    <h4>Seleccione el Color</h4>
                    <br />
                    <asp:ListBox ID="listcolores" runat="server" AutoPostBack="True" Rows="1" Width="160px" Height="32px" CssClass="listas">
                        <asp:ListItem Selected="True" Text="Blanco" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Negro" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Rojo" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Naranja" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Amarillo" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Verde" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Azul" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Morado" Value="8"></asp:ListItem>
                        <asp:ListItem Text="Rosa" Value="9"></asp:ListItem>
                    </asp:ListBox>
                    <br />
                    <br />
                    <h4>Seleccione una opcion</h4>
                    <br />
                    <asp:ListBox ID="listopciones" runat="server" AutoPostBack="True" Rows="1" Width="160px" Height="32px" CssClass="listas">
                        <asp:ListItem Selected="True" Text="Opcion1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Opcion2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Opcion3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Opcion4" Value="4"></asp:ListItem>
                    </asp:ListBox>
                </div>

            </aside>

    </section>
    <footer>
        <div id="redes">
            <asp:HyperLink ID="HyperLinkfb" runat="server" ImageUrl="~/Imagenes/facebook.png" NavigateUrl="www.facebook.com" Target="_blank"></asp:HyperLink>
            <asp:HyperLink ID="HyperLinkgog" runat="server" ImageUrl="~/Imagenes/google.png" Target="_blank" NavigateUrl="https://plus.google.com"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Imagenes/twitter.png" NavigateUrl="https://twitter.com" Target="_blank">HyperLink</asp:HyperLink>
        </div>
        <pre>
            &copy; 2016 por Nicolas Pastran Zamora  y Oscar Lopez
            Informacion de Contacto nikodpzamora@gmail.com
        </pre>

    </footer>
                        </form>
</body>
</html>