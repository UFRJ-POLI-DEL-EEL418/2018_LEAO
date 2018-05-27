<%@page import="java.util.*"  %>
<%@page import="java.net.URL"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% URL contexto = new URL(
            "http",
            request.getServerName(),
            request.getServerPort(),
            request.getContextPath());%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <title>TempoClimaNet</title>

        <link rel="stylesheet" type="text/css" href="<%= contexto%>/css/index.css"/>
        <script type="text/javascript" src="<%= contexto%>/js/index.js"></script>  
    </head>

    <body>
        <div id="idHeader">
            <div id="idMenu">&equiv;</div>
            <div id="idNomeSite">TempoClimaNET</div>
            <div id="idDELPOLI">EEL418 / DEL / POLI / UFRJ</div>
            <div id="idlista">&nbsp;</div>
        </div>
        
    </body>
</html>
