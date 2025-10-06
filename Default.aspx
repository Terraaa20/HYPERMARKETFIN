

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <title>HyperMarket - Inicio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8f9fa;
        }

        /* Navbar negra fija arriba */
        .navbar {
            background-color: #000 !important;
        }
        .navbar-brand {
            font-weight: bold;
            color: #fff !important;
            font-size: 1.5rem;
        }
        .nav-link {
            color: #fff !important;
            font-weight: 500;
            margin-left: 10px;
        }
        .nav-link:hover {
            color: #ffc107 !important;
        }

        /* Carrusel */
        .carousel-item img {
            height: 60vh;
            width: 100%;
            object-fit: cover;
        }
        .carousel-caption {
            background-color: rgba(0,0,0,0.5);
            border-radius: 10px;
            padding: 10px 15px;
        }
        .carousel-caption h5 {
            font-size: 1.4rem;
            color: #fff;
        }
        .carousel-caption p {
            color: #f8f9fa;
        }

        /* Bienvenida */
        section {
            margin-top: 60px;
            text-align: center;
            padding: 20px;
        }
        section h2 {
            font-size: 2rem;
            font-weight: 600;
        }
        section p {
            max-width: 750px;
            margin: 15px auto;
            color: #555;
            font-size: 1.1rem;
        }

        /* Footer */
        footer {
            background-color: #000;
            color: #ccc;
            padding: 20px 0;
            text-align: center;
            margin-top: 50px;
        }

        /* Adaptaciones móviles */
        @media (max-width: 768px) {
            .carousel-item img {
                height: 40vh;
            }
            .navbar-brand {
                font-size: 1.3rem;
            }
            .carousel-caption h5 {
                font-size: 1rem;
            }
            .carousel-caption p {
                font-size: 0.9rem;
            }
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <!-- NAVBAR NEGRA -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">HyperMarket</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="menu">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" href="Default.aspx">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="Productos.aspx">Productos</a></li>
                        <li class="nav-item"><a class="nav-link" href="cliente.aspx">Clientes</a></li>
                        <li class="nav-item"><a class="nav-link" href="Categorias.aspx">Categorías</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- CARRUSEL -->
        <div id="carouselExample" class="carousel slide mt-5 pt-4 container" data-bs-ride="carousel">
            <div class="carousel-inner rounded shadow">
                <div class="carousel-item active">
                    <img src="https://i.postimg.cc/0jRGn78x/producto-en-mercadotecnia.jpg" class="d-block w-100" alt="Productos">
                    <div class="carousel-caption">
                        <h5>Administra tus productos</h5>
                        <p>Organiza fácilmente tus productos y precios.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://i.postimg.cc/rpZQ1d0y/tipos-de-clientes-como-son-y-como-deberias-tratarlos1.jpg" class="d-block w-100" alt="Clientes">
                    <div class="carousel-caption">
                        <h5>Gestiona tus clientes</h5>
                        <p>Mantén toda la información actualizada.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://i.postimg.cc/c4c77K2f/categories-google-my-business-1.jpg" class="d-block w-100" alt="Categorías">
                    <div class="carousel-caption">
                        <h5>Clasifica tus categorías</h5>
                        <p>Organización simple para encontrar todo rápido.</p>
                    </div>
                </div>
                
            </div>

            <!-- Controles -->
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>

        <!-- SECCIÓN BIENVENIDA -->
        <section class="container">
            <h2>Bienvenido a HyperMarket</h2>
            <p>
                Nuestro sistema te permite gestionar de forma integral tus productos, clientes y categorías.  
                Diseñado para que administres tu negocio de manera práctica, rápida y eficiente.
            </p>
        </section>

        <!-- FOOTER -->
        <footer>
            <p>&copy; 2025 HyperMarket. Todos los derechos reservados.</p>
        </footer>

    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
