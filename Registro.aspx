<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="$safeprojectname$.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <link href="CSS/RegistroStyle.css" rel="stylesheet" /> 
   <title>Registo</title>
</head>
<body>
    <header>
        <a title="Inicio" href="Inicio.aspx">
            <asp:Image ID="ImgIcono" runat="server" ImageUrl="~/Imagenes/custom.png" /></a>
        <asp:Label ID="lblregistro" runat="server" CssClass="lblregistro" Text="Crea tu cuenta"></asp:Label>
    </header>
    <section>
        <aside id="col1">
        </aside>
        <aside id="col2">
            <div id="divcontenido">
             <form runat="server" id="formregistro">
                <div id="divnombre" class="divs">
                    <asp:Label ID="lblnom" runat="server" Text="Nombre" CssClass="text"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtnombre" runat="server" Width="140px" CssClass="text" placeholder="Nombre"></asp:TextBox>
                    <asp:TextBox ID="txtapellido" runat="server" Width="140px" CssClass="text" placeholder="Apellido"></asp:TextBox>
                </div>
                 <div class="divs" id="divfecha">
                     <asp:Label ID="Label1" runat="server" Text="Fecha de Nacimiento" CssClass="text"></asp:Label>
                     <br />
                     <asp:TextBox ID="txtdate" runat="server" CssClass="text"></asp:TextBox>
                     <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/Imagenes/calendario.png" OnClick="ImageButton1_Click" Width="25px" />
                     <asp:Calendar ID="calendar" runat="server" OnSelectionChanged="calendar_SelectionChanged1"></asp:Calendar>
                 </div>
                  <div class="divs">
                    <asp:Label ID="Label3" runat="server" Text="Direccion de correo" ></asp:Label>
                    <br />
                    <asp:TextBox ID="txtcorreo" runat="server" Width="260px" CssClass="text" placeholder="                        @correo.com" TextMode="Email"></asp:TextBox>
                </div>
                <div id="divnomuser" class="div">
                    <asp:Label ID="lblusername" runat="server" Text="Nombre de Usuario"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtusername" runat="server" placeholder="Custombiker" Width="140px" CssClass="text"></asp:TextBox>
                </div>
                <div id="divpasword" class="divs">
                    <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtpass" runat="server" Width="140px" CssClass="text" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Confirmar contraseña" CssClass="divs"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtcpass" runat="server" Width="140px" TextMode="Password" CssClass="text"></asp:TextBox>
                </div>
                <div id="divgenero" class="divs">
                    <asp:Label ID="Label5" runat="server" Text="Selccione su genero"></asp:Label>
                    <br />
                    <asp:RadioButtonList ID="rdbgenero" runat="server" RepeatDirection="Horizontal" Width="340px" CssClass="radio">
                        <asp:ListItem Text="Masculino" Selected="True" Value="Masculino"></asp:ListItem>
                        <asp:ListItem Text="Femenino" Selected="False" Value="Femenino"></asp:ListItem>
                    </asp:RadioButtonList>
                    </div>
               <br />
                <asp:Button ID="bntcrearuser" runat="server" Text="Crear" CssClass="bntcrear" OnClick="bntcrearuser_Click"/>
            <br />
             </form>
            </div>
        </aside>
        <aside id="col3">
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
</body>
</html>
