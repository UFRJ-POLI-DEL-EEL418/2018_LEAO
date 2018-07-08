package eel418.tempoclimanet02;

import eel418.tempoclimanet02.daos.BaseDeDadosDAO;
import eel418.tempoclimanet02.daos.ConnectionFactory;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class IniciadorContexto implements ServletContextListener {
    public static ConnectionFactory connectionFactory;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try{
            //--- Dependency injection num campo static de uma classe que só tem métodos static!
            //--- Fazer para todos DAO !!
            BaseDeDadosDAO.cf = new ConnectionFactory();
            
System.out.println("Injetou dependência: ConnectionFactory.");
        }catch(Exception e){
System.out.println("NÃO injetou dependência: ConnectionFactory.");
            e.printStackTrace();
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
