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
            <div id="idNomeSite">TempoClimaNET v2.0.1</div>
            <div id="idDELPOLI">EEL418 / DEL / POLI / UFRJ</div>
            <div id="idlista">&nbsp;</div>
        </div>

        <div id="divMensagens">
            ESPAÇO PARA MENSAGENS DO SISTEMA, ERROS, ETC...
        </div>

        <div id="idDivDatahora">
            Local: 
            <div class="local">Brasil</div>
            <div class="local">Rio de Janeiro, RJ - Posto 9</div>
            <br>
            Data-hora: 
            <input id="idDatahora"
                   type="text" 
                   value="01/01/1970 00:00:00"
                   readonly/>
            <input id="botBUSCAR" type="button" value="BUSCAR"/>
            <br>
            <span class="classTexto1" style="font-size:0.80em">
                (referência: dd/MM/aaaa hh:mm:ss)
            </span>
        </div>

        <div id="enclosingDiv">

            <div id="idDivMedAutom" class="shadowBorder" style="float:left;">
                MEDIDAS AUTOMÁTICAS<br>
                <span class="classTexto2" style="font-size:0.80em;">
                    (mais recente, igual ou anterior à referência)
                </span>
                <div id="divDatahoraMedAut">
                    Data-hora:
                    <input id="datahoraMedAut" value="01/01/1970 00:00:00"/>
                    <input type="button" style="font-size:0.9em;" value="<<Anterior"/>
                    <input type="button" style="font-size:0.9em;" value="Próxima>>"/>
                </div>
                <div id="divTabelaMedAut">    
                    <table>
                        <tr class="fundoAzul">
                            <td> Temperatura:</td>
                            <td><input id="temperaturamedaut"
                                       class="classTexto2 fundoAzul" 
                                       value=""/>
                            </td>
                            <td> C</td>
                        </tr>
                        <tr>
                            <td style="text-align:right;">
                                Umidade: 
                            </td>
                            <td style="text-align:right;">
                                <input 
                                    class="classTexto2" 
                                    name="umidade" 
                                    value=""/>
                            </td>
                            <td style="text-align:left;">
                                %
                            </td>
                        </tr>
                        <tr class="fundoAzul">
                            <td style="text-align:right;">
                                Ponto de orvalho: 
                            </td>
                            <td style="text-align:right;">
                                <input
                                    class="classTexto2 fundoAzul" 
                                    name="orvalho" 
                                    value=""/>
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
                                    value=""/>
                            </td>
                            <td style="text-align:left;">
                                hPa
                            </td>
                        </tr>
                        <tr class="fundoAzul">
                            <td style="text-align:right;">
                                Taxa de precipitação: 
                            </td>
                            <td style="text-align:right;">
                                <input 
                                    class="classTexto2 fundoAzul" 
                                    name="taxaprecipitacao" 
                                    value=""/>
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
                                    value=""/>
                            </td>
                            <td style="text-align:left;">
                                mm
                            </td>
                        </tr>
                        <tr class="fundoAzul">
                            <td style="text-align:right;">
                                Velocidade do Vento: 
                            </td>
                            <td style="text-align:right;">
                                <input
                                    class="classTexto2 fundoAzul" 
                                    size="6" 
                                    name="velvento" 
                                    value=""/>
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
                                    value=""/>
                            </td>
                            <td style="text-align:left;">

                            </td>
                        </tr>
                    </table>    
                </div>
            </div>

            <div id="idDivObserv" class="shadowBorder" style="float:left;">
                DADOS DE OBSERVADORES<br>
                <span class="classTexto2" style="font-size:0.80em">
                    (mais recente, igual ou anterior à referência)
                </span>
                <div id="divDatahoraObs">
                    Data-hora: 
                    <input id="datahoraObs" value="01/01/1970 00:00:00"/>
                    <input id="ObsAnterior"
                           type="button" 
                           style="font-size:0.9em;" value="<<Anterior"/>
                    <input id="ObsPosterior"
                           type="button" 
                           style="font-size:0.9em;" value="Próxima>>"/>
                </div>
                
                <table>
                    <tr class="fundoAzul">
                        <td style="width:150px;text-align:right;">
                            Altura das ondas:
                        </td>
                        <td id="alturaondas" class="classTexto2" 
                            style="width:80px;text-align:left;">
                            
                        </td>
                        <td style="width:60px;text-align:left;">
                            m
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Temperatura<br>da água:
                        </td>
                        <td style="text-align:right;">
                            <input 
                                class="classTexto2" 
                                name="temperaturaagua" 
                                style="width:80px;"
                                value=""/>
                        </td>
                        <td style="text-align:left;">
                            C
                        </td>
                    </tr>
                    <tr class="fundoAzul">
                        <td style="text-align:right;">
                            Bandeira:
                        </td>
                        <td colspan="2" 
                            style="text-align:center;font-size:1.0em;">
                            <input
                                style="text-align:center;
                                    color:forestgreen;
                                    font-weight:bold;"
                                class="classTexto3 fundoAzul" 
                                name="bandeira" 
                                value="VERDE"
                                />
                        </td>
                    </tr>
                </table>                    
                <br>
            </div>
        </div>
            
        <div style="width:310px;height:100px;clear:left;">&nbsp;</div>
            
    </body>
</html>
