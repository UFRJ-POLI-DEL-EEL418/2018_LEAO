package eel418.tempoclimanet02.daos;

import eel418.tempoclimanet02.dtos.ResultadosDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class BaseDeDadosDAO {

    public static ConnectionFactory cf;
//==============================================================================    
    public static ResultadosDTO buscarObsPosterior(String datahora){
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        ResultadosDTO resultados = new ResultadosDTO();
        Date date = null;
        Timestamp datahoraTS = null;

        try{
            Calendar c = Calendar.getInstance(); 
            date = df.parse(datahora);
            c.setTime(date); 
            datahoraTS = new Timestamp(c.getTime().getTime());
        }catch(Exception e){
            e.printStackTrace();
            return new ResultadosDTO();
        }
        
        ResultSet rs = null;
        try (Connection conexao = cf.getConnection()) {
            PreparedStatement comandoSQL = conexao.prepareStatement(
                "SELECT * FROM observacoes "+
                "WHERE datahoraobservacao>? "+
                "ORDER BY datahoraobservacao ASC LIMIT 1;"
            );
            comandoSQL.setTimestamp(1, datahoraTS);
            
            rs = comandoSQL.executeQuery();
            if (rs.next()) {
                resultados.setDatahoraobservacao(df.format(rs.getTimestamp("datahoraobservacao")));
                resultados.setAlturaondas(rs.getFloat("alturaondas"));
                resultados.setTemperaturaagua(rs.getFloat("temperaturaagua"));
                resultados.setBandeira(rs.getString("bandeira"));
            }else{
                resultados.setMensagens("NA");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultadosDTO();
        }
        resultados.setDatahora(datahora);
        return resultados;
    }
//==============================================================================    
    public static ResultadosDTO buscarObsAnterior(String datahora){
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        ResultadosDTO resultados = new ResultadosDTO();
        Date date = null;
        Timestamp datahoraTS = null;

        try{
            Calendar c = Calendar.getInstance(); 
            date = df.parse(datahora);
            c.setTime(date); 
            datahoraTS = new Timestamp(c.getTime().getTime());
        }catch(Exception e){
            e.printStackTrace();
            return new ResultadosDTO();
        }
        
        ResultSet rs = null;
        try (Connection conexao = cf.getConnection()) {
            PreparedStatement comandoSQL = conexao.prepareStatement(
                "SELECT * FROM observacoes "+
                "WHERE datahoraobservacao<? "+
                "ORDER BY datahoraobservacao DESC LIMIT 1;"
            );
            comandoSQL.setTimestamp(1, datahoraTS);
            
            rs = comandoSQL.executeQuery();
            if (rs.next()) {
                resultados.setDatahoraobservacao(df.format(rs.getTimestamp("datahoraobservacao")));
                resultados.setAlturaondas(rs.getFloat("alturaondas"));
                resultados.setTemperaturaagua(rs.getFloat("temperaturaagua"));
                resultados.setBandeira(rs.getString("bandeira"));
            }else{
                resultados.setMensagens("NA");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultadosDTO();
        }
        resultados.setDatahora(datahora);
        return resultados;
    }
//==============================================================================    
    public static ResultadosDTO buscarMedAutProxima(String datahora){
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        ResultadosDTO resultados = new ResultadosDTO();
        Date date = null;
        Timestamp datahoraTS = null;

        try{
            Calendar c = Calendar.getInstance(); 
            date = df.parse(datahora);
            c.setTime(date); 
            datahoraTS = new Timestamp(c.getTime().getTime());
        }catch(Exception e){
            e.printStackTrace();
            return new ResultadosDTO();
        }
        
        ResultSet rs = null;
        try (Connection conexao = cf.getConnection()) {
            PreparedStatement comandoSQL = conexao.prepareStatement(
                "SELECT * FROM medidasautomaticas "+
                "WHERE datahora>? "+
                "ORDER BY datahora ASC LIMIT 1;"
            );
            comandoSQL.setTimestamp(1, datahoraTS);
            
            rs = comandoSQL.executeQuery();
            if (rs.next()) {
                resultados.setDatahoraMedAut(df.format(rs.getTimestamp("datahora")));
                resultados.setTemperatura(rs.getFloat("temperatura"));
                resultados.setUmidade(rs.getFloat("umidade"));
                resultados.setOrvalho(rs.getFloat("orvalho"));
                resultados.setPressao(rs.getFloat("pressao"));
                resultados.setTaxaprecipitacao(rs.getFloat("taxaprecipitacao"));
                resultados.setPrecipitacaoacum(rs.getFloat("precipitacaoacum"));
                resultados.setVelvento(rs.getFloat("velvento"));
                resultados.setDirvento(rs.getFloat("dirvento"));
            }else{
                resultados.setMensagens("NA");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultadosDTO();
        }
        resultados.setDatahora(datahora);
        return resultados;
    }    
//==============================================================================    
    public static ResultadosDTO buscarMedAutAnterior(String datahora){
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        ResultadosDTO resultados = new ResultadosDTO();
        Date date = null;
        Timestamp datahoraTS = null;

        try{
            Calendar c = Calendar.getInstance(); 
            date = df.parse(datahora);
            c.setTime(date); 
            datahoraTS = new Timestamp(c.getTime().getTime());
        }catch(Exception e){
            e.printStackTrace();
            return new ResultadosDTO();
        }
        
        ResultSet rs = null;
        try (Connection conexao = cf.getConnection()) {
            PreparedStatement comandoSQL = conexao.prepareStatement(
                "SELECT * FROM medidasautomaticas "+
                "WHERE datahora<? "+
                "ORDER BY datahora DESC LIMIT 1;"
            );
            comandoSQL.setTimestamp(1, datahoraTS);
            
            rs = comandoSQL.executeQuery();
            if (rs.next()) {
                resultados.setDatahoraMedAut(df.format(rs.getTimestamp("datahora")));
                resultados.setTemperatura(rs.getFloat("temperatura"));
                resultados.setUmidade(rs.getFloat("umidade"));
                resultados.setOrvalho(rs.getFloat("orvalho"));
                resultados.setPressao(rs.getFloat("pressao"));
                resultados.setTaxaprecipitacao(rs.getFloat("taxaprecipitacao"));
                resultados.setPrecipitacaoacum(rs.getFloat("precipitacaoacum"));
                resultados.setVelvento(rs.getFloat("velvento"));
                resultados.setDirvento(rs.getFloat("dirvento"));
            }else{
                resultados.setMensagens("NA");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultadosDTO();
        }
        resultados.setDatahora(datahora);
        return resultados;
    }
//==============================================================================    
    public static ResultadosDTO buscarResultadosPorData(String datahora){
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        ResultadosDTO resultados = new ResultadosDTO();
        Date date = null;
        Timestamp datahoraTS = null;

        try{
            Calendar c = Calendar.getInstance(); 
            date = df.parse(datahora);
            c.setTime(date); 
            datahoraTS = new Timestamp(c.getTime().getTime());
        }catch(Exception e){
            e.printStackTrace();
            return new ResultadosDTO();
        }
        
        ResultSet rs = null;
        try (Connection conexao = cf.getConnection()) {
            PreparedStatement comandoSQL = conexao.prepareStatement(
                "SELECT * FROM medidasautomaticas "+
                "WHERE datahora<=? "+
                "ORDER BY datahora DESC LIMIT 1;"
            );
            comandoSQL.setTimestamp(1, datahoraTS);
            
            rs = comandoSQL.executeQuery();
            if (rs.next()) {
                resultados.setDatahoraMedAut(df.format(rs.getTimestamp("datahora")));
                resultados.setTemperatura(rs.getFloat("temperatura"));
                resultados.setUmidade(rs.getFloat("umidade"));
                resultados.setOrvalho(rs.getFloat("orvalho"));
                resultados.setPressao(rs.getFloat("pressao"));
                resultados.setTaxaprecipitacao(rs.getFloat("taxaprecipitacao"));
                resultados.setPrecipitacaoacum(rs.getFloat("precipitacaoacum"));
                resultados.setVelvento(rs.getFloat("velvento"));
                resultados.setDirvento(rs.getFloat("dirvento"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultadosDTO();
        }

        rs = null;
        try (Connection conexao = cf.getConnection()) {
            PreparedStatement comandoSQL = conexao.prepareStatement(
                "SELECT * FROM observacoes "+
                "WHERE datahoraobservacao<=? "+
                "ORDER BY datahoraobservacao DESC LIMIT 1;"
            );
            comandoSQL.setTimestamp(1, datahoraTS);
            
            rs = comandoSQL.executeQuery();
            if (rs.next()) {
                resultados.setDatahoraobservacao(df.format(rs.getTimestamp("datahoraobservacao")));
                resultados.setAlturaondas(rs.getFloat("alturaondas"));
                resultados.setTemperaturaagua(rs.getFloat("temperaturaagua"));
                resultados.setBandeira(rs.getString("bandeira"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultadosDTO();
        }
        resultados.setDatahora(datahora);
        return resultados;
    }    
//==============================================================================    
}
