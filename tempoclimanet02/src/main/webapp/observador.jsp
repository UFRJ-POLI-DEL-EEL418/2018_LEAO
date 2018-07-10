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


        <link rel="stylesheet" type="text/css" 
              href="<%= contexto%>/css/jquery-ui.css">
        <link rel="stylesheet" type="text/css" 
              href="<%= contexto%>/css/jquery-ui-timepicker-addon.css"/>

        <!--script type="text/javascript"
        src="https://code.jquery.com/jquery-3.3.1.min.js" ></script -->
        <!-- integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" 
                crossorigin="anonymous"></script -->
        <script type="text/javascript" 
                src="<%= contexto%>/js/jquery-3.3.1.js"></script>
        <script type="text/javascript" 
        src="<%= contexto%>/js/jquery-ui.min.js"></script>
        <script type="text/javascript" 
        src="<%= contexto%>/js/jquery-ui-timepicker-addon.js"></script>

        <link rel="stylesheet" type="text/css" 
              href="<%= contexto%>/css/index2.css"/>
        <script type="text/javascript" src="<%= contexto%>/js/biblioteca.js"></script>  
        <script type="text/javascript" src="<%= contexto%>/js/index2.js"></script>  
    </head>

    <body style="background-color:black;font-size:20pt;font-family:arial;">
        <div style="width:320px;
                    height:568px;
                    margin-left:auto;
                    margin-right:auto;
                    margin-top:100px;
                    border:3px solid white;
                    border-radius:5px;
                    background-color:#206A94;
                    text-align:center;
                    color:white;">
            <div style="width:80px;margin-left:auto;margin-right:0px;font-size:0.8em">
                <a href="">SAIR</a>
            </div>
                        <br>
                        Data-hora: 
            <div id="idDatahora" style="color:black;">
                <input id="idDatahora2" 
                       style="width:90%;font-size:18pt;text-align:center;color:gray;"
                       type="text"
                       value="09/07/2018 10:10:00"
                       readonly
                       />
            </div>
                       
            <div id="divObservacoes">
                <br>
                <table align="center" style="width:90%">
                    <tr>
                        <td style="width:90%;text-align:center;" colspan="2">
                            Altura das ondas:
                        </td>
                    </tr>
                    <tr>
                        <td style="width:140px;text-align:right;">
                            <input type="text" 
                                   style="width:200px;font-size:18pt;font-weight:bold;text-align:center;">
                        </td>
                        <td style="width:20px;text-align:left;">
                            m
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center;" colspan="2">
                            <br>
                            Temperatura da água:
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            <input type="text" 
                                   style="width:200px;font-size:18pt;font-weight:bold;text-align:center;">
                        </td>
                        <td style="text-align:left;">
                            &deg;C
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center;" colspan="2">
                            <br>
                            Bandeira:
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center;font-size:1.0em;">
                            <select style="width:200px;
                                    font-size:18pt;
                                    font-weight:bold;
                                    text-align:center;">
                                <option value="verd" selected style="color:green;font-size:18pt;font-weight:bold;">VERDE</option>
                                <option value="verm" style="color:red;font-size:18pt;font-weight:bold;">VERMELHA</option>
                                <option value="nada" style="color:gray;font-size:18pt;font-weight:bold;">NENHUMA</option>
                            </select>    
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center;font-size:1.0em;">
                            <br>
                            <input type="button" value="ENVIAR"
                                   style="width:200px;font-size:18pt;">
                        </td>
                    </tr>
                </table> 
            </div>
        </div>
    </body>
</html>
