<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SitiosdeInteres.aspx.cs" Inherits="$safeprojectname$.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="CSS/InicioStyle.css" rel="stylesheet" />    
    <title>Sitios de Interes</title>
</head>
<body id="bodysi">
    <form runat="server" id="formsi">
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
          <aside id="sicol1">
            </aside>
         <aside id="sicol2">
              <br />
                 <asp:Label ID="lblgu" runat="server" Text="Conoce algunos sitios de gran utilidad"></asp:Label>
                              <br />
                              <br />
             <div id="m">
                 <iframe src="https://www.google.com/maps/d/embed?mid=1Kh5lnH-XO09gCHumc2PP6YYIfEY&hl=es-419" width="640" height="480"></iframe>
             </div>
         </aside>
            <aside id="sicol3">
                <div >
                    <h3>
                        Descripcion
                    </h3>
                    <br />
                        <h5>
                            Estas son algunos de nuestro sitios sugeridos donde encontraras mantenimiento para tu bici o en caso de alguna falla que le ocurra a tu bici podras encontrar una solucion rapidamente.
                        </h5>
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
