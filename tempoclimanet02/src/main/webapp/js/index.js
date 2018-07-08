

window.onload = main;
function main(){
    
    $('#idDatahora2').datetimepicker({
	    dateFormat: "dd/mm/yy", 
	    timeFormat: "HH:mm:ss",
	    setDate: new Date()
    });
    
    buscarTodosResultadosPorDatahora();

    document.getElementById("botBUSCAR").addEventListener(
	    'click',
	    buscarTodosResultadosPorDatahora);
    document.getElementById("medAutAnterior").addEventListener(
	    'click',
	    buscarMedAutAnterior);
    document.getElementById("medAutProxima").addEventListener(
	    'click',
	    buscarMedAutProxima);
    document.getElementById("ObsAnterior").addEventListener(
	    'click',
	    buscarObsAnterior);
    document.getElementById("ObsProxima").addEventListener(
	    'click',
	    buscarObsProxima);
};

//------------------------------------------------------------------------------
function buscarObsAnterior(){
    var data = {};
    data.datahora = document.getElementById('datahoraObs').innerHTML;
    fazerPedidoPostAJAXcomPromise(data,'buscarObsAnterior')
	.then(function(xhr){atualizarObservacoes('ANTERIORES',xhr.response);})
	.catch(function(xhr){
	    document.getElementById("divMensagens").innerHTML = 
				    "NÃO CONSEGUIU RECEBER DADOS DO SERVIDOR...";
	    console.log('Resposta:'+JSON.stringify(xhr.response));
	    console.log('Status:'+JSON.stringify(xhr.status));
	    console.log('ReadyState:'+JSON.stringify(xhr.readyState));
	    console.log('Erro:'+JSON.stringify(xhr.err));
	});
}
//------------------------------------------------------------------------------
function buscarObsProxima(){
    var data = {};
    data.datahora = document.getElementById('datahoraObs').innerHTML;
    fazerPedidoPostAJAXcomPromise(data,'buscarObsProxima')
	.then(function(xhr){atualizarObservacoes('POSTERIORES',xhr.response);})
	.catch(function(xhr){
	    document.getElementById("divMensagens").innerHTML = 
				    "NÃO CONSEGUIU RECEBER DADOS DO SERVIDOR...";
	    console.log('Resposta:'+JSON.stringify(xhr.response));
	    console.log('Status:'+JSON.stringify(xhr.status));
	    console.log('ReadyState:'+JSON.stringify(xhr.readyState));
	    console.log('Erro:'+JSON.stringify(xhr.err));
	});
}
//------------------------------------------------------------------------------
function atualizarObservacoes(mensagem,resultados){
    if(resultados.mensagens==='NA'){
	document.getElementById("divMensagens").innerHTML = 
					"NÃO ENCONTROU OBSERVAÇÕES "+mensagem+"...";
    }else{
	$('#divObservacoes').hide();
	$('#divObservacoes').slideDown("slow");
	document.getElementById("divMensagens").innerHTML = "";
	document.getElementById("datahoraObs").innerHTML = resultados.datahoraobservacao;
	document.getElementById("alturaondas").innerHTML = resultados.alturaondas.toFixed(1);
	document.getElementById("temperaturaagua").innerHTML = resultados.temperaturaagua;
	document.getElementById("bandeira").innerHTML = resultados.bandeira;
    }
}
//------------------------------------------------------------------------------
function buscarMedAutAnterior(){
    var data = {};
    data.datahora = document.getElementById('datahoraMedAut').innerHTML;
//alert(JSON.stringify(data));    
    fazerPedidoPostAJAXcomPromise(data,'buscarMedAutAnterior')
	.then(function(xhr){atualizarMedidasAutomaticas('ANTERIORES',xhr.response);})
	.catch(function(xhr){
	    document.getElementById("divMensagens").innerHTML = 
				    "NÃO CONSEGUIU RECEBER DADOS DO SERVIDOR...";
	    console.log('Resposta:'+JSON.stringify(xhr.response));
	    console.log('Status:'+JSON.stringify(xhr.status));
	    console.log('ReadyState:'+JSON.stringify(xhr.readyState));
	    console.log('Erro:'+JSON.stringify(xhr.err));
	});
}
//------------------------------------------------------------------------------
function buscarMedAutProxima(){
    var data = {};
    data.datahora = document.getElementById('datahoraMedAut').innerHTML;
//alert(JSON.stringify(data));    
    fazerPedidoPostAJAXcomPromise(data,'buscarMedAutProxima')
	.then(function(xhr){atualizarMedidasAutomaticas('POSTERIORES',xhr.response);})
	.catch(function(xhr){
	    document.getElementById("divMensagens").innerHTML = 
				    "NÃO CONSEGUIU RECEBER DADOS DO SERVIDOR...";
	    console.log('Resposta:'+JSON.stringify(xhr.response));
	    console.log('Status:'+JSON.stringify(xhr.status));
	    console.log('ReadyState:'+JSON.stringify(xhr.readyState));
	    console.log('Erro:'+JSON.stringify(xhr.err));
	});
}
//------------------------------------------------------------------------------
function buscarTodosResultadosPorDatahora(){
    var data = {};
    data.datahora = document.getElementById('idDatahora2').value;
//alert(JSON.stringify(data));    
    fazerPedidoPostAJAXcomPromise(data,'buscarTodosResultadosPorDatahora')
	.then(function(xhr){atualizarDadosDaPagina(xhr.response);})
	.catch(function(xhr){
	    document.getElementById("divMensagens").innerHTML = 
				    "NÃO CONSEGUIU RECEBER DADOS DO SERVIDOR...";
	    console.log('Resposta:'+JSON.stringify(xhr.response));
	    console.log('Status:'+JSON.stringify(xhr.status));
	    console.log('ReadyState:'+JSON.stringify(xhr.readyState));
	    console.log('Erro:'+JSON.stringify(xhr.err));
	});
}
//------------------------------------------------------------------------------
function atualizarMedidasAutomaticas(mensagem,resultados){
    if(resultados.mensagens==='NA'){
	document.getElementById("divMensagens").innerHTML = 
					"NÃO ENCONTROU MEDIDAS "+mensagem+"...";
    }else{
	$('#divTabelaMedAut').hide();
	$('#divTabelaMedAut').slideDown("slow");
	document.getElementById("divMensagens").innerHTML = "";
	document.getElementById("datahoraMedAut").innerHTML = resultados.datahoraMedAut;
	document.getElementById("temperaturamedaut").innerHTML = resultados.temperatura;
	document.getElementById("umidade").innerHTML = resultados.umidade;
	document.getElementById("orvalho").innerHTML = resultados.orvalho;
	document.getElementById("pressao").innerHTML = resultados.pressao;
	document.getElementById("taxaprecipitacao").innerHTML = resultados.taxaprecipitacao;
	document.getElementById("precipitacaoacum").innerHTML = resultados.precipitacaoacum;
	document.getElementById("velvento").innerHTML = resultados.velvento;
	document.getElementById("dirvento").innerHTML = resultados.dirvento;
    }
}
//------------------------------------------------------------------------------
function atualizarDadosDaPagina(resultados){
//alert(JSON.stringify(xhr.response));
//    document.getElementById("idDatahora").innerHTML = resultados.idDatahora;
	document.getElementById("divMensagens").innerHTML = "";

    document.getElementById("datahoraMedAut").innerHTML = resultados.datahoraMedAut;
    document.getElementById("temperaturamedaut").innerHTML = resultados.temperatura;
    document.getElementById("umidade").innerHTML = resultados.umidade;
    document.getElementById("orvalho").innerHTML = resultados.orvalho;
    document.getElementById("pressao").innerHTML = resultados.pressao;
    document.getElementById("taxaprecipitacao").innerHTML = resultados.taxaprecipitacao;
    document.getElementById("precipitacaoacum").innerHTML = resultados.precipitacaoacum;
    document.getElementById("velvento").innerHTML = resultados.velvento;
    document.getElementById("dirvento").innerHTML = resultados.dirvento;
    document.getElementById("datahoraObs").innerHTML = resultados.datahoraobservacao;
    document.getElementById("alturaondas").innerHTML = resultados.alturaondas.toFixed(1);
    document.getElementById("temperaturaagua").innerHTML = resultados.temperaturaagua;
    document.getElementById("bandeira").innerHTML = resultados.bandeira;
};
//------------------------------------------------------------------------------
