<%-- 
    Document   : puesto
    Created on : 5/10/2021, 10:44:52
    Author     : gvosc
--%>
<%@page import="modelo.Puesto"%>
<%@page import="java.util.HashMap"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Puestos</title>
        <link href="css/form.css" rel="stylesheet" type="text/css">
        <link href="css/table.css" rel="stylesheet" type="text/css">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    </head>
    <body>
        <div class="contenedor">
            <h1>Puestos existentes</h1>
            <div class="container">
                <!-- Modal -->
                <div class="modal fade" id="modalPuesto" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Formulario Puesto</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form action="SrPuesto" method="post" class="form">
                                    <h2 class="form_title">Ingresar Datos</h2>
                                    <div class="form_container">
                                        <div class="form_group">
                                            <input type="text" name="txtId" id="txtId" class="form_imput" value="0" readonly>
                                            <label for="lblId" class="form_label">ID</label>
                                            <span class="form_line"></span>
                                        </div>
                                        <div class="form_group">
                                            <input type="text" name="txtPuesto" id="txtPuesto" class="form_imput" placeholder="Ejemplo: Gerente">
                                            <label for="lblPuesto" class="form_label">Ingrese el Puesto:</label>
                                            <span class="form_line"></span>
                                        </div>
                                        <div class="btn_group">
                                            <button name="btn_agregar" id="btn_agregar" value="agregar" class="form_submit">Agregar</button>
                                            <button name="btn_modificar" id="btn_modificar" value="modificar" class="form_submit">Modificar</button>
                                            <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="form_submit">Eliminar</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>IdPuesto</th>
                        <th>Puesto</th>
                    </tr>
                </thead>
                <tbody id="tblPuestos">
                    <%
         Puesto puesto = new Puesto();
         DefaultTableModel tabla = new DefaultTableModel();
         tabla = puesto.leer();
         for (int t=0;t <tabla.getRowCount();t++){
             out.println("<tr data-id="+tabla.getValueAt(t, 0)+">");
             out.println("<td>"+ tabla.getValueAt(t, 0)+"</td>");
             out.println("<td>"+ tabla.getValueAt(t, 1)+"</td>");
             out.println("</tr>");
         }
        
                    %>
                </tbody>
            </table>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalPuesto" onclick="limpiar()">Nuevo</button>
            <a href="index.jsp"><button type="button" class="btn btn-danger">Atr??s <--</button></a>

        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script type="text/javascript">

                function limpiar() {
                    $("#txtId").val(0);
                    $("#txtPuesto").val('');
                }

                $('#tblPuestos').on('click', 'tr td', function (evt) {
                    var target, id, puesto;
                    target = $(event.target);
                    id = target.parent().data('id');
                    puesto = target.parent("tr").find("td").eq(1).html();

                    $("#txtId").val(id);
                    $("#txtPuesto").val(puesto);
                    $("#modalPuesto").modal('show');
                });
        </script>
    </body>
</html>
