<%@page import="Suporte.Calculo" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recebe Calculo</title>
    </head>
    <body>
        <%
            String kmr = request.getParameter("kmrodado");
            String labs = request.getParameter("litros");
            String opcao = request.getParameter("opcao");
            
            Double kmrodados = Double.parseDouble(kmr);
            Double litro = Double.parseDouble(labs);
            
            out.print(new Calculo().combustivel(kmrodados, litro, opcao));
        %>
    </body>
</html>
