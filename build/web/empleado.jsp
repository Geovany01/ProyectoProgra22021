<%-- 
    Document   : index
    Created on : 6/09/2021, 19:09:24
pattern="[E]{1}[0-9]{3}" required
    Author     : gvosc
--%>
<%@page import="modelo.Puesto"%>
<%@page import="modelo.Empleado"%>
<%@page import="java.util.HashMap"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Empleados</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    </head>
    <body>
        <h1>Formulario Empleados</h1>

        
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="modalEmpleado" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Formulario Empleados</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="SrEmpleado" method="post" class="form-group">
                                <label for="lblId"><b>ID</b></label>
                                <input type="text" name="txtId" id="txtId" class="form-control" value="0"  readonly>
                                <label for="lblNombres"><b>Nombres</b></label>
                                <input type="text" name="txtNombres" id="txtNombres" class="form-control" placeholder="Ejemplo: Nombre1 Nombre2">
                                <label for="lblApellidos"><b>Apellidos</b></label>
                                <input type="text" name="txtApellidos" id="txtApellidos" class="form-control" placeholder="Ejemplo: Apellido1 Apellido2">
                                <label for="lblDireccion"><b>Direccion</b></label>
                                <input type="text" name="txtDireccion" id="txtDireccion" class="form-control" placeholder="Ejemplo: #Casa Ave calle lug">
                                <label for="lblTelefono"><b>Telefono</b></label>
                                <input type="number" name="txtTelefono" id="txtTelefono" class="form-control" placeholder="Ejemplo: 12345678">
                                <label for="lblDPI"><b>DPI</b></label>
                                <input type="text" name="txtDPI" id="txtDPI" class="form-control" placeholder="Ejemplo: E001" >
                                <label for="lblGenero"><b>Genero</b></label>
                                <input type="text" name="txtGenero" id="txtGenero" class="form-control" placeholder="Ejemplo: Masculino/Femenino" >
                                <label for="lblFechaNacimiento"><b>Nacimiento</b></label>
                                <input type="date" name="txtFechaNacimiento" id="txtFechaNacimiento" class="form-control" placeholder="yyy-MM-DD">
                                <label for="lblPuesto"><b>Puestos</b></label>
                                <br>
                                <select name="dropPuesto" id="dropPuesto" class="form-control">
                                    <%
                                        Puesto puesto = new Puesto();
                                        HashMap<String,String> drop = puesto.dropSangre();
                                        for(String i: drop.keySet()) {
                                            out.println("<option value='" + i + "' >" + drop.get(i) + "</option>");
                                        }
                                    %>
                                </select>
                                <label for="lblFechaInicioLabores"><b>FechaInicioLabores</b></label>
                                <input type="date" name="txtFechaInicioLabores" id="txtFechaInicioLabores" class="form-control" placeholder="yyy-MM-DD" >
                                <label for="lblFechaIngreso"><b>FechaIngreso</b></label>
                                <input type="text" name="txtFechaIngreso" id="txtFechaIngreso" class="form-control" placeholder="Ejemplo: E001" >
                                <br>
                                <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary btn-lg">Agregar</button>
                                <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-success btn-lg">Modificar</button>
                                <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-danger btn-lg">Eliminar</button>
                                <button type="button" class="btn btn-secondary btn-lg" data-bs-dismiss="modal">Close</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th>DPI</th>
                        <th>Genero</th>
                        <th>Nacimiento</th>
                        <th>Puesto</th>
                        <th>Inicio Labores</th>
                        <th>Ingreso</th>
                    </tr>
                </thead>
                <tbody id="tblEmpleados">
                    <%
         Empleado empleado = new Empleado();
         DefaultTableModel tabla = new DefaultTableModel();
         tabla = empleado.leer();
         for (int t=0;t <tabla.getRowCount();t++){
             out.println("<tr data-id=" + tabla.getValueAt(t, 0) + " data-id_p="+tabla.getValueAt(t, 11) + ">");
             out.println("<td>"+ tabla.getValueAt(t, 1)+"</td>");
             out.println("<td>"+ tabla.getValueAt(t, 2)+"</td>");
             out.println("<td>"+ tabla.getValueAt(t, 3)+"</td>");
             out.println("<td>"+ tabla.getValueAt(t, 4)+"</td>");
             out.println("<td>"+ tabla.getValueAt(t, 5)+"</td>");
             out.println("<td>"+ tabla.getValueAt(t, 6)+"</td>");
             out.println("<td>"+ tabla.getValueAt(t, 7)+"</td>");
             out.println("<td>"+ tabla.getValueAt(t, 8)+"</td>");
             out.println("<td>"+ tabla.getValueAt(t, 9)+"</td>");
             out.println("<td>"+ tabla.getValueAt(t, 10)+"</td>");
             out.println("</tr>");
         }
        
                    %>
                </tbody>
            </table>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalEmpleado" onclick="limpiar()">Nuevo</button>
                <a href="index.jsp"><button type="button" class="btn btn-danger">Atrás <--</button></a>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script type="text/javascript">
            
            function limpiar() {
                $("#txtId").val(0);
                $("#dropPuesto").val(1);
                $("#txtNombres").val('');
                $("#txtApellidos").val('');
                $("#txtDireccion").val('');
                $("#txtTelefono").val('');
                $("#txtDPI").val('');
                $("#txtGenero").val('');
                $("#txtFechaNacimiento").val('');
                $("#txtFechaInicioLabores").val('');
                $("#txtFechaIngreso").val('');
            }
            
            $('#tblEmpleados').on('click', 'tr td', function (evt) {
                var target, id, id_p, nombres, apellidos, direccion, telefono, DPI, genero, nacimiento, fechaInicioLabores, fechaIngreso;
                target = $(event.target);
                id = target.parent().data('id');
                id_p = target.parent().data('id_p');
                nombres = target.parent("tr").find("td").eq(0).html();
                apellidos = target.parent("tr").find("td").eq(1).html();
                direccion = target.parent("tr").find("td").eq(2).html();
                telefono = target.parent("tr").find("td").eq(3).html();
                DPI = target.parent("tr").find("td").eq(4).html();
                genero = target.parent("tr").find("td").eq(5).html();
                nacimiento = target.parent("tr").find("td").eq(6).html();
                fechaInicioLabores = target.parent("tr").find("td").eq(8).html();
                fechaIngreso = target.parent("tr").find("td").eq(9).html();


                $("#txtId").val(id);
                $("#dropPuesto").val(id_p);
                $("#txtNombres").val(nombres);
                $("#txtApellidos").val(apellidos);
                $("#txtDireccion").val(direccion);
                $("#txtTelefono").val(telefono);
                $("#txtDPI").val(DPI);
                $("#txtGenero").val(genero);
                $("#txtFechaNacimiento").val(nacimiento);
                $("#txtFechaInicioLabores").val(fechaInicioLabores);
                $("#txtFechaIngreso").val(fechaIngreso);
                $("#modalEmpleado").modal('show');
            });
        </script>
    </body>
</html>

