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
        <div id="idMenu">&equiv;</div>
        <div id="idHeader">
            <div id="idNomeSite">TempoClimaNET</div>
            <div id="idDELPOLI">EEL418 / DEL / POLI / UFRJ</div>
            <div id="idlista">&nbsp;</div>
        </div>

        <div id="idDivLocal">
            <span class="classTexto1" style="font-size:1.50em;font-weight:bold;color:yellow;">
                AAAAA
            </span>
        </div>

        <div id="idDivDatahora">
            Local: 
            <div class="local">Brasil</div>
            <div class="local">Rio de Janeiro, RJ - Posto 9</div>
            <br>
            Data-hora: 
            <input type="text" size="26" name="datahoraref" 
                   value="${datahoraref}"
                   class="local"
                   style="font-size:1.05em;text-align:center;"/>
            <input type="submit" value="BUSCAR" name="funcao" 
                   style="font-size:1.05em;text-align:center;"/>
            <br>
            <span class="classTexto1" style="font-size:0.80em">
                (referência: dd/MM/aaaa hh:mm:ss)
            </span>
        </div>

        <br>
        <div id="idDivMedAutom" class="shadowBorder">
            MEDIDAS AUTOMÁTICAS<br>
            <span class="classTexto2" style="font-size:0.80em;">
                (mais recente, igual ou anterior à referência)
            </span>
            <br>
            <div style="width:100%;
                 margin-left:auto;
                 margin-right:auto;
                 text-align:center;">
                <br>
                Data-hora:
                <input style="width:245px;font-size:1.1em;border:none;text-align:center;" 
                       name="datahora" 
                       value="${RESULTADOS.datahora}"/>
                <br>
                <input type="submit" style="font-size:0.9em;" name="funcao" value="<<Med. anterior"/>
                <input type="submit" style="font-size:0.9em;" name="funcao" value="Próxima med.>>"/>
            </div>
            <br>
            <div style="width:100%;
                 margin-left:auto;
                 margin-right:auto;
                 text-align:center;
                 font-size:0.9em;">    
                <table>
                    <tr>
                        <td style="width:295px;text-align:right;">
                            Temperatura:
                        </td>
                        <td style="width:80px;text-align:right;">
                            <input 
                                class="classTexto2" 
                                name="temperatura" 
                                value="${RESULTADOS.temperatura}"/>
                        </td>
                        <td style="width:60px;text-align:left;">
                            C
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Umidade: 
                        </td>
                        <td style="text-align:right;">
                            <input 
                                class="classTexto2" 
                                name="umidade" 
                                value="${RESULTADOS.umidade}"/>
                        </td>
                        <td style="text-align:left;">
                            %
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Ponto de orvalho: 
                        </td>
                        <td style="text-align:right;">
                            <input 
                                class="classTexto2" 
                                name="orvalho" 
                                value="${RESULTADOS.orvalho}"/>
                        </td>
                        <td style="text-align:left;">
                            C
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Pressão atmosférica: 
                        </td>
                        <td style="text-align:right;">
                            <input 
                                class="classTexto2" 
                                name="pressao" 
                                value="${RESULTADOS.pressao}"/>
                        </td>
                        <td style="text-align:left;">
                            hPa
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Taxa de precipitação: 
                        </td>
                        <td style="text-align:right;">
                            <input 
                                class="classTexto2" 
                                name="taxaprecipitacao" 
                                value="${RESULTADOS.taxaprecipitacao}"/>
                        </td>
                        <td style="text-align:left;">
                            mm/h
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Precipitação (24h): 
                        </td>
                        <td style="text-align:right;">
                            <input 
                                class="classTexto2" 
                                name="precipitacaoacum" 
                                value="${RESULTADOS.precipitacaoacum}"/>
                        </td>
                        <td style="text-align:left;">
                            mm
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Velocidade do Vento: 
                        </td>
                        <td style="text-align:right;">
                            <input 
                                class="classTexto2" 
                                size="6" 
                                name="velvento" 
                                value="${RESULTADOS.velvento}"/>
                        </td>
                        <td style="text-align:left;">
                            km/h
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Direção do vento:</td>
                        <td style="text-align:right;">
                            <input 
                                class="classTexto2" 
                                size="6" 
                                name="dirvento" 
                                value="${RESULTADOS.dirvento}"/>
                        </td>
                        <td style="text-align:left;">

                        </td>
                    </tr>
                </table>    
            </div>
        </div>



        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        FIM



    </body>
</html>
