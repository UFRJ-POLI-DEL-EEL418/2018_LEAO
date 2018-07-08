

//------------------------------------------------------------------------------
function fazerPedidoPostAJAXcomPromise(sendData,destino){
        return new Promise(function (resolve,reject) {
            var data = JSON.stringify(sendData);
            var xhr = new XMLHttpRequest();
            xhr.open('POST', destino);
            xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
//            xhr.timeout = 5000;
            xhr.responseType = 'json';
            xhr.onload = function(){
                if (xhr.status === 200 && xhr.readyState===4) {
                    resolve(xhr);
                } else {
                    reject(xhr);
                }
            };
            // Handle network errors
            xhr.onerror = function() {
                reject(xhr);
            };
            xhr.send(data);
        });
}
//==============================================================================
    var resultados = {
//	idDatahora : '20/05/2018 10:10',
	datahoraMedAut : '20/05/2018 10:10',
	temperaturamedaut : 30,
	umidade : 55,
	orvalho : 18,
	pressao : 1014,
	taxaprecipitacao : 25,
	precipitacaoacum : 15,
	velvento : 10,
	dirvento : 180,
	datahoraObs : '20/05/2018 10:10',
	alturaondas : '1,90',
	temperaturaagua : '18,5',
	bandeira : 'VERDE'
    };
