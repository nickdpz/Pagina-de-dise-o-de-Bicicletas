 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="$safeprojectname$.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio</title>
    <link href="CSS/InicioStyle.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="scripts/header.js"></script>
</head>
<body id="bodyinicio">
    <form runat="server">
        <header>
            <a title="Inicio" href="Inicio.aspx">
                <asp:Image ID="ImgIcono" runat="server" ImageUrl="~/Imagenes/custom.png" /></a>

            <asp:Button ID="btniniciar" runat="server" Text="Iniciar" OnClick="eventos" />
            <asp:Button ID="btnperfil" runat="server" Text="Perfil" CssClass="btnheader"  OnClick="eventos"/>
            <nav>

                <ul>
                    <li>
                        <asp:Button ID="btnsi" runat="server" CssClass="links" OnClick="eventos" Text="Sitios de Interés" /></li>

                    <li>
                        <asp:Button ID="btncatalogo" runat="server" CssClass="links" OnClick="eventos" Text="Catalogo" />
                        <ul>
                            <li>
                                <asp:Button ID="btnmarcos" runat="server" CssClass="links" OnClick="eventos" Text="Marcos" /></li>
                            <li>
                                <asp:Button ID="btnrines" CssClass="links" runat="server" Text="Rines" OnClick="eventos" /></li>
                            <li>
                                <asp:Button ID="btnmanubrio" runat="server" CssClass="links" OnClick="eventos" Text="Manubrio" /></li>
                            <li>
                                <asp:Button ID="btntenedor" CssClass="links" runat="server" Text="Tenedor" OnClick="eventos" /></li>
                        </ul>
                    </li>
                    <li>
                        <asp:Button ID="btndiseño" CssClass="links" runat="server" Text="Diseño" OnClick="eventos" /></li>
                    <li>
                        <asp:Button ID="btncu" CssClass="links" runat="server" Text="Consejos de Uso" OnClick="eventos" /></li>
                </ul>

            </nav>


        </header>
        <section>
            <div id="vacio">
            </div>
            <div id="contenedor">

                <aside id="col1">
                </aside>
                <aside id="col2">
                    <br />
                    <div id="video">
                        <h2>Que esperas para sumarte !
                        </h2>
                        <br />
                        <iframe width="620" height="320" src="https://www.youtube.com/embed/MTKJalUIEr8" onmouseover="No te arrepentiras"></iframe>
                        <br />
                    </div>
                </aside>
                <aside id="col3"></aside>

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
