<%-- 
    Document   : index
    Created on : 14 oct. 2022, 09:04:14
    Author     : ppbet
--%>
<%@page import = "apis.api_cliente" %>
<%@page import = "javax.swing.table.DefaultTableModel" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <table class="table table-striped">
    <thead>
      <tr>
        <th>Nit</th>
        <th>Nombres</th>
        <th>Apellidos</th>
        <th>Direccion</th>
        <th>Telefono</th>
        <th>Nacimiento</th>
      </tr>
    </thead>
    <tbody>
       <%
        api_cliente api_c = new api_cliente();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = api_c.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id ="+ tabla.getValueAt(t,0)+ " >");
            out.println("<td>"+ tabla.getValueAt(t,1)+"</td>");
            out.println("<td>"+ tabla.getValueAt(t,2)+"</td>");
            out.println("<td>"+ tabla.getValueAt(t,3)+"</td>");
            out.println("<td>"+ tabla.getValueAt(t,4)+"</td>");
            out.println("<td>"+ tabla.getValueAt(t,5)+"</td>");
            out.println("<td>"+ tabla.getValueAt(t,6)+"</td>");
            out.println("</tr>");
           }
       %>
    </tbody>
  </table>
  
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
