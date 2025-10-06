<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="CapaCliente.Productos" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gestión de Productos</title>
    <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet" />
    <style>
        body {
            font-family: 'Varela Round', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff;
        }

        /* ENCABEZADO */
        header {
            background: #111;
            color: white;
            padding: 10px 0;
        }
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 90%;
            margin: 0 auto;
        }
        nav ul {
            list-style: none;
            display: flex;
            padding: 0;
            margin: 0;
        }
        nav ul li {
            margin: 0 15px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            padding: 8px 15px;
            border-radius: 5px;
        }
        nav ul li.active a {
            background-color: #333;
            box-shadow: 0 0 10px rgba(255,255,255,0.2);
        }
        nav div img {
            width: 1.8rem;
        }

        /* CONTENIDO PRINCIPAL */
        form {
            width: 80%;
            max-width: 900px;
            margin: 30px auto;
        }

        h1 {
            text-align: center;
            font-size: 28px;
            margin-bottom: 25px;
        }

        h2 {
            font-size: 22px;
            margin-top: 40px;
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        input[type="text"], input[type="number"], select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* BOTONES */
        .botones {
            display: flex;
            gap: 10px;
        }
        .botones input[type="submit"],
        .botones input[type="button"] {
            background-color: #4a4fa4;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 4px;
            cursor: pointer;
        }
        .botones input:nth-child(2) {
            background-color: #ddd;
            color: #000;
        }

        /* TABLA */
        .lista-productos {
            margin-top: 40px;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .gridview th, .gridview td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        .gridview th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        /* PIE DE PÁGINA */
        footer {
            background: #111;
            color: #ccc;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="Default.aspx">Home</a></li>
                <li class="active"><a href="productos.aspx">Productos</a></li>
                <li><a href="cliente.aspx">Clientes</a></li>
                <li><a href="Categorias.aspx">Categorías</a></li>
            </ul>
            <div>
                <a href="https://facebook.com" target="_blank">
                    <img src="https://static.vecteezy.com/system/resources/previews/018/930/698/non_2x/facebook-logo-facebook-icon-transparent-free-png.png" alt="Facebook" />
                </a>
                <a href="https://twitter.com" target="_blank">
                    <img src="https://static.vecteezy.com/system/resources/previews/053/986/348/non_2x/x-twitter-icon-logo-symbol-free-png.png" alt="Twitter" />
                </a>
            </div>
        </nav>
    </header>

    <form id="form1" runat="server">
        <h1>Gestión de Productos</h1>

        <h2>Datos del Producto</h2>
        <div>
            <label for="txtIdProducto">ID Producto</label>
            <asp:TextBox ID="txtIdProducto" runat="server" ReadOnly="true"></asp:TextBox>

            <label for="txtNombre">Nombre</label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>

            <label for="txtPrecio">Precio</label>
            <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number" step="0.01"></asp:TextBox>

            <label for="txtStock">Stock</label>
            <asp:TextBox ID="txtStock" runat="server" TextMode="Number"></asp:TextBox>

            <label for="ddlCategoria">Categoría</label>
            <asp:DropDownList ID="ddlCategoria" runat="server" DataTextField="Nombre" DataValueField="IdCategoria"></asp:DropDownList>

            <label for="ddlProveedor">Proveedor</label>
            <asp:DropDownList ID="ddlProveedor" runat="server" DataTextField="Nombre" DataValueField="IdProveedor"></asp:DropDownList>
        </div>

        <div class="botones">
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
        </div>

        <div class="lista-productos">
            <h2>Lista de Productos</h2>
            <asp:GridView ID="gvProductos" runat="server" CssClass="gridview" AutoGenerateColumns="False" DataKeyNames="IdProducto">
                <Columns>
                    <asp:BoundField DataField="IdProducto" HeaderText="ID Producto" ReadOnly="True" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoría" />
                    <asp:BoundField DataField="Proveedor" HeaderText="Proveedor" />
                </Columns>
            </asp:GridView>
        </div>
    </form>

    <footer>
        © 2025 HyperMarket. Todos los derechos reservados.
    </footer>
</body>
</html>
