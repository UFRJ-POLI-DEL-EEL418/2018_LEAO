package eel418.tempoclimanet02.dtos;

import java.io.Serializable;
import javax.json.Json;
import javax.json.JsonObject;

public class ResultadosDTO implements Serializable{
    private String mensagens = "";
    private String datahora = "--- NÃO ACHOU NADA ---";
    private String datahoraMedAut = "--- NÃO ACHOU NADA ---";
    private String datahoraobservacao = "--- NÃO ACHOU NADA ---";
    private String bandeira = "";
    private float temperatura = 0;
    private float umidade = 0;
    private float orvalho = 0;
    private float pressao = 0;
    private float taxaprecipitacao = 0;
    private float precipitacaoacum = 0;
    private float velvento = 0;
    private float dirvento = 0;
    private float alturaondas = 0;
    private float temperaturaagua = 0;

    JsonObject objetoJSON;
    public JsonObject toJSON(){

        objetoJSON = Json.createObjectBuilder()
//                .add("serialmedidasautomaticas", serialmedidasautomaticas)
                .add("mensagens", mensagens)
                .add("datahora", datahora)
                .add("datahoraMedAut", datahoraMedAut)
                .add("alturaondas", alturaondas)
                .add("bandeira", bandeira)
                .add("datahoraobservacao", datahoraobservacao)
                .add("dirvento", dirvento)
//                .add("medidor", medidor)
//                .add("observador", observador)
                .add("orvalho", orvalho)
                .add("precipitacaoacum", precipitacaoacum)
                .add("pressao", pressao)
//                .add("serialestacao", serialestacao)
//                .add("serialobservacoes", serialobservacoes)
                .add("taxaprecipitacao", taxaprecipitacao)
                .add("temperatura", temperatura)
                .add("temperaturaagua", temperaturaagua)
                .add("umidade", umidade)
                .add("velvento", velvento)
                .build();
        
        return objetoJSON;
    }
    
    @Override
    public String toString(){
        return toJSON().toString();
    }

    public String getDatahoraMedAut() {
        return datahoraMedAut;
    }

    public void setDatahoraMedAut(String datahoraMedAut) {
        this.datahoraMedAut = datahoraMedAut;
    }
    
    public String getMensagens() {
        return mensagens;
    }

    public void setMensagens(String mensagens) {
        this.mensagens = mensagens;
    }

    public String getDatahoraobservacao() {
        return datahoraobservacao;
    }

    public void setDatahoraobservacao(String datahoraobs) {
        this.datahoraobservacao = datahoraobs;
    }

    public String getBandeira() {
        return bandeira;
    }

    public void setBandeira(String bandsalvavidas) {
        this.bandeira = bandsalvavidas;
    }

    public float getUmidade() {
        return umidade;
    }

    public void setUmidade(float umidade) {
        this.umidade = umidade;
    }

    public float getOrvalho() {
        return orvalho;
    }

    public void setOrvalho(float orvalho) {
        this.orvalho = orvalho;
    }

    public float getPressao() {
        return pressao;
    }

    public void setPressao(float pressao) {
        this.pressao = pressao;
    }

    public float getTaxaprecipitacao() {
        return taxaprecipitacao;
    }

    public void setTaxaprecipitacao(float precipitacao) {
        this.taxaprecipitacao = precipitacao;
    }

    public float getPrecipitacaoacum() {
        return precipitacaoacum;
    }

    public void setPrecipitacaoacum(float precipacumul) {
        this.precipitacaoacum = precipacumul;
    }

    public float getVelvento() {
        return velvento;
    }

    public void setVelvento(float velvento) {
        this.velvento = velvento;
    }

    public float getDirvento() {
        return dirvento;
    }

    public void setDirvento(float dirvento) {
        this.dirvento = dirvento;
    }

    public float getAlturaondas() {
        return alturaondas;
    }

    public void setAlturaondas(float altondas) {
        this.alturaondas = altondas;
    }

    public float getTemperaturaagua() {
        return temperaturaagua;
    }

    public void setTemperaturaagua(float tempagua) {
        this.temperaturaagua = tempagua;
    }

    public String getDatahora() {
        return datahora;
    }

    public void setDatahora(String datahoraautom) {
        this.datahora = datahoraautom;
    }
    
    
    public float getTemperatura() {
        return temperatura;
    }

    public void setTemperatura(float temperatura) {
        this.temperatura = temperatura;
    }
    
}
