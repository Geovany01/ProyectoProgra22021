<%-- 
    Document   : index
    Created on : 5/10/2021, 08:52:12
    Author     : gvosc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal</title>
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-light">

            <div class="container-fluid">
                <!-- Links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="puesto.jsp">PUESTOS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="empleado.jsp">EMPLEADOS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cliente.jsp">CLIENTES</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="proveedor.jsp">PROVEEDORES</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="marca.jsp">MARCAS</a>
                    </li>
                </ul>
            </div>

        </nav>
    <center>
        <div class="container mt-5">
            <div class="card" style="width: 30rem;">
                <div class="card-body">
                    <input type="text" name="txtUsuario" class="form-control mt-2" placeholder="Ingrese Usuario" required>
                    <input type="password" name="txtClave" class="form-control mt-2" placeholder="Ingrese Clave" required>
                    <input type="submit" class="btn btn-primary btn-block mt-2" value="Ingresar">
                </div>
            </div>
        </div>
    </center>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
