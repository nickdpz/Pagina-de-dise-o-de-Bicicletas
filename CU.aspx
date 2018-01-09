<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CU.aspx.cs" Inherits="$safeprojectname$.CU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consejos de uso</title>
    <link href="CSS/InicioStyle.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="scripts/header.js"></script>
</head>
<body>
    <form id="form1" runat="server">
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
            <aside id="cucol1">
            </aside>
            <aside id="cucol2">
                <h2 id="titulo" prefix="fb: http://ogp.me/ns/fb#" style="font-size: 50px; font-family: Corbel; font-weight: bold; font-style: oblique; font-variant: small-caps; border-style: none; border-color: #FFFF00; text-transform: capitalize; color: #FFCC00">La bicicleta</h2>
                <br />
                <h5> 
<p>
En todo vehículo es imprescindible, y a veces obligatoria, una revisión periódica del estado de sus elementos para garantizar su correcto funcionamiento y poder circular con total seguridad.</p>
                <p>
                    <br />

En el caso de la bicicleta, los puntos principales a controlar son el estado de las cubiertas, ruedas, frenos, sistemas de iluminación, holguras de los diferentes rodamientos (especialmente dirección), altura correcta del sillín y del manillar.</p>
                <p>
                    <br />

Además, resulta más que aconsejable tener una dotación mínima para hacer frente a la avería más habitual: el pinchazo. Para ello, se precisa llevar una bomba o inflador (adaptado al tipo de válvula de que dispongan las ruedas), una o dos cámaras de repuesto (o en su defecto una cajita de parches), desmontadores de cubierta y una llave adecuada para soltar las ruedas del cuadro.

Tampoco está de más llevar bombillas o pilas de repuesto para el foco delantero y el piloto trasero, al menos cuando se circule de noche.
    </p>            
    </h5>
            </aside>
            <aside id="cucol3">
                <div id="comentarios">
                    <asp:Label ID="Label1" runat="server" Text="Contribuye con nosotros para un mundo mejor!" Font-Italic="True" Font-Size="Large"></asp:Label><br />
                    <asp:Label ID="Label2" runat="server" Text="Puedes dejar aqui abajo un consejo para los demas usuarios" Font-Italic="True" Font-Size="Large"></asp:Label><br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="140px" Width="320px" BorderStyle="Groove" BorderColor="#FF9900" Font-Italic="True">Hola</asp:TextBox> <br />
                    <br />
                    <asp:Button ID="btnenviarcu" runat="server" Text="Enviar" CssClass="botones" />
                </div>

            </aside>

        </div>
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
