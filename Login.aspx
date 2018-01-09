<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="$safeprojectname$.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="CSS/LoginStyle.css" rel="stylesheet" />

</head>
<body>
    <form runat="server">
     <header>
        <a title="Inicio" href="Inicio.aspx">
            <asp:Image ID="ImgIcono" runat="server" ImageUrl="~/Imagenes/custom.png" /></a>
        <nav> 
            <ul>
                <li><asp:Button ID="btnsi" runat="server" CssClass="link" OnClick="eventos" Text="Sitios de Interés" /></li>

               <li><asp:Button ID="btncatalogo" runat="server" CssClass="link" OnClick="eventos" Text="Catalogo" />
                    <ul>
                        <li><asp:Button ID="btnmarcos" runat="server" CssClass="link" OnClick="eventos" Text="Marcos" /></li>
                        <li><asp:Button ID="btnrines" CssClass="link" runat="server" Text="Rines" OnClick="eventos" /></li>
                        <li><asp:Button ID="btnmanubrio" runat="server" CssClass="link" OnClick="eventos" Text="Manubrio" /></li>
                        <li><asp:Button ID="btntenedor" CssClass="link" runat="server" Text="Tenedor" OnClick="eventos" /></li>
                    </ul>
                </li>
                <li><asp:Button ID="btndiseño" CssClass="link" runat="server" Text="Diseño" OnClick="eventos" /></li>
                <li><asp:Button ID="btncu" CssClass="link" runat="server" Text="Consejos de Uso" OnClick="eventos" /></li>
            </ul>
        </nav>
    </header>
    <section>
        <aside id="col1">
        </aside>

        <aside id="col2">
                <asp:Label ID="lblerror" runat="server" Text="" CssClass="error"></asp:Label>
            <asp:Image ID="logocompleto" runat="server" ImageUrl="~/Imagenes/bici.png" />
            <div id="form-input">
                    <asp:Image ID="imguser" runat="server" Height="34px" ImageUrl="~/Imagenes/imguser.png" Width="32px" />
                    <asp:TextBox ID="txtusername" runat="server" CssClass="input" placeholder="Ingrese su Usuario" Required="required"></asp:TextBox>
                    <br />
                    <asp:Image ID="imglock" runat="server" Height="34px" ImageUrl="~/Imagenes/imglock.png" Width="32px" />
                    <asp:TextBox ID="txtuserpassword" runat="server" CssClass="input" placeholder="Ingrese su Contraseña" TextMode="Password" Required="required"></asp:TextBox>
                    <br />
                    <asp:Button CssClass="btns" ID="btninicarsecion" runat="server" Text="Iniciar" OnClick="btninicarsecion_Click" />
                
            </div>
            <a href="" target="_blank">¿ Olvido su contraseña ?</a>
            <br />
            <a href="Registro.aspx" target="_self">Registrarse</a>
            <br />
        </aside>
        <aside id="col3"></aside>

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
