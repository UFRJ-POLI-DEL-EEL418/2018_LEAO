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

        <script type="text/javascript"
        src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
        <!-- integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" 
                crossorigin="anonymous"></script -->
        <!-- script type="text/javascript" 
                src="<%= contexto%>/js/jquery-3.3.1.js"></script -->
        <script type="text/javascript" 
        src="<%= contexto%>/js/jquery-ui.min.js"></script>
        <script type="text/javascript" 
        src="<%= contexto%>/js/jquery-ui-timepicker-addon.js"></script>

        <link rel="stylesheet" type="text/css" 
              href="<%= contexto%>/css/index.css"/>
        <script type="text/javascript" src="<%= contexto%>/js/biblioteca.js"></script>  
        <script type="text/javascript" src="<%= contexto%>/js/index.js"></script>  
    </head>

    <body>
        <a name="TOPO">&nbsp;</a>
        <div id="idHeader">
            <div id="idNomeSite">
                TempoClimaNET v2.0.1<br>
            </div>
            <div id="idDELPOLI"><i>jorge.leao@ufrj.br</i></div>
            <div id="idlista">&nbsp;</div>
        </div>

        <div id="divMensagens">

        </div>

        <div id="idDivDatahora">
            Local: 
            <div class="local">Brasil</div>
            <div class="local">Rio de Janeiro, RJ - Posto 9</div>
            <br>
            Data-hora: 
            <div id="idDatahora">
                <input id="idDatahora2" 
                       type="text"
                       value="${datahoraref}"
                       readonly
                       />
            </div>
            <span class="classTexto1" style="font-size:0.80em">
                (referência: dd/MM/aaaa hh:mm:ss)
            </span>
            <br>
            <input id="botBUSCAR" type="button" value="BUSCAR"/>
            <div class="linksJanelas">
                <br>
                <a href="#MEDIDASAUTOMATICAS" 
                   style="text-decoration:azure;color:white;text-shadow:2px 2px 4px #000000;">
                    MEDIDAS AUTOMÁTICAS
                </a>
                <br>
                <br>
                <a href="#DADOSDEOBSERVADORES" 
                   style="text-decoration:azure;color:white;text-shadow:2px 2px 4px #000000;">
                    DADOS DE OBSERVADORES
                </a>
                <br>
                <br>
                <br>
            </div>
        </div>

        <div id="enclosingDiv">
            <div class="espacamento01">
                <a name="MEDIDASAUTOMATICAS">&nbsp;</a>
            </div>
            <div id="idDivMedAutom" class="shadowBorder" style="float:left;">
                Medidas Automáticas
                &nbsp;
                <a href="#TOPO" style="color:#1C648D;text-shadow:1px 1px 1px #004477;">
                    Topo<img src="./images/triangulo.ico" width="20" alt=""/>
                </a>
                <br>
                <span class="classTexto2" style="font-size:0.80em;">
                    (mais recente, igual ou anterior à referência)
                </span>
                <div id="divDatahoraMedAut">
                    Data-hora:
                    <div id="datahoraMedAut"></div>
                    <input id="medAutAnterior" 
                           type="button" 
                           style="font-size:0.9em;" 
                           value="<<Anterior"/>
                    <input id="medAutProxima" 
                           type="button" 
                           style="font-size:0.9em;" 
                           value="Próxima>>"/>
                </div>
                <div id="divTabelaMedAut">    
                    <table>
                        <tr class="fundoAzul">
                            <td> Temperatura:</td>
                            <td><div id="temperaturamedaut"
                                     class="classTexto2 fundoAzul"></div> 
                            </td>
                            <td> &deg;C</td>
                        </tr>
                        <tr>
                            <td style="text-align:right;">
                                Umidade: 
                            </td>
                            <td style="text-align:right;">
                                <div id="umidade" class="classTexto2"></div>
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
                                <div id="orvalho" class="classTexto2 fundoAzul"></div>
                            </td>
                            <td style="text-align:left;">
                                &deg;C
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right;">
                                Pressão atmosférica: 
                            </td>
                            <td style="text-align:right;">
                                <div id="pressao" class="classTexto2"></div>
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
                                <div id="taxaprecipitacao" 
                                    class="classTexto2 fundoAzul">
                                         
                                </div>
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
                                <div id="precipitacaoacum" class="classTexto2"></div>
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
                                <div id="velvento" class="classTexto2 fundoAzul"></div>
                            </td>
                            <td style="text-align:left;">
                                km/h
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right;">
                                Direção do vento:</td>
                            <td style="text-align:right;">
                                <div id="dirvento" class="classTexto2"></div>
                            </td>
                            <td style="text-align:left;font-weight:bold;">
                                &deg;
                            </td>
                        </tr>
                    </table>    
                </div>
            </div>

            <div class="espacamento01">
                <a name="DADOSDEOBSERVADORES">&nbsp;</a>
            </div>
            <div id="idDivObserv" class="shadowBorder" style="float:left;">
                Dados de Observadores 
                <a href="#TOPO" style="color:#1C648D;text-shadow:1px 1px 1px #004477;">
                    Topo<img src="./images/triangulo.ico" width="20" alt=""/>
                </a>
                <br>
                <span class="classTexto2" style="font-size:0.80em">
                    (mais recente, igual ou anterior à referência)
                </span>
                <div id="divDatahoraObs">
                    Data-hora: 
                    <div id="datahoraObs"></div>
                    <input id="ObsAnterior"
                           type="button" 
                           style="font-size:0.9em;" value="<<Anterior"/>
                    <input id="ObsProxima"
                           type="button" 
                           style="font-size:0.9em;" value="Próxima>>"/>
                </div>

                <div id="divObservacoes">
                    <table>
                        <tr class="fundoAzul">
                            <td style="width:150px;text-align:right;">
                                Altura das ondas:
                            </td>
                            <td class="classTexto2" 
                                style="width:80px;text-align:left;">
                                <div 
                                    id="alturaondas" 
                                    class="classTexto2" 
                                    style="width:80px;"></div>
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
                                <div 
                                    id="temperaturaagua" 
                                    class="classTexto2" 
                                    style="width:80px;"></div>
                            </td>
                            <td style="text-align:left;">
                                &deg;C
                            </td>
                        </tr>
                        <tr class="fundoAzul">
                            <td style="text-align:right;">
                                Bandeira:
                            </td>
                            <td colspan="2" 
                                style="text-align:center;font-size:1.0em;">
                                <div id="bandeira" style="text-align:center;
                                     color:forestgreen;
                                     font-weight:bold;"
                                     class="classTexto3 fundoAzul"></div>
                            </td>
                        </tr>
                    </table> 
                <br>
                <br>
                <div style="width:300px;height:170px;overflow:hidden;">
                    <iframe 
                        style="margin-top:-27px;scrolling:no"
                        width="300" 
                        height="230" 
                        src="https://www.climatempo.com.br/tempo-no-seu-site/videos/selo/sudeste/300x230?rel=0&amp;controls=0&amp;showinfo=0" 
                        frameborder="0" 
                        allowfullscreen>

                    </iframe>   
                    <!-- src="https://www.youtube.com/embed/q630OUJVk8U/300x225?rel=0&amp;controls=0&amp;showinfo=0" -->
                </div>
                <!-- video width="300" height="225" controls>
                    <source src="images/PrevisaoSudeste.mp4" type="video/mp4">
                </video --> 
                </div>
            </div>


            <!-- div id="idDivObserv" class="shadowBorder" style="float:left;">
                <iframe 
                    
                    allow="autoplay; encrypted-media" 

                    scrolling="no" 
                    marginwidth="0" 
                    marginheight="0" 
                    style="margin:0;padding:0;border:0;" 
                    src="https://www.climatempo.com.br/tempo-no-seu-site/videos/selo/sudeste/300x225?rel=0&amp;controls=0&amp;showinfo=0" 
                    width="300" 
                    height="225" 
                    frameborder="0"
                    allow="autoplay; encrypted-media"
                    allowfullscreen
                    >
                        
                </iframe>
            </div -->

        </div>

        <div style="width:310px;height:100px;clear:left;">&nbsp;</div>

    </body>
</html>
