<%@ page import="app.java.cinejungla.Comands" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 26/3/2022
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Comands multiplex = Comands.getInstance();
    String texto = "";

    switch (multiplex.getComando_multiplex()) {
        case 1:
            texto = "titan";
            break;
        case 2:
            texto = "unicentro";
            break;
        case 3:
            texto = "plaza central";
            break;
        case 4:
            texto = "gran estacion";
            break;
        case 5:
            texto = "embajador";
            break;
        case 6:
            texto = "las americas   ";
            break;
    }
%>
<html>
<head>

    <title>Title</title>
</head>
<body>
    <%= texto%>
</body>
</html>
