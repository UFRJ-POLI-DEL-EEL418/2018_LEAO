package eel418.tempoclimanet02.daos;

import java.sql.Connection;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ConnectionFactory {
    private DataSource ds;

//------------------------------------------------------------------------------------------------------------
    public ConnectionFactory() {
        try {
            InitialContext cxt = new InitialContext();
            ds = (DataSource) cxt.lookup("java:comp/env/jdbc/tempoclimanet01");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
//------------------------------------------------------------------------------------------------------------
    public Connection getConnection(){
        try{
            if(ds!=null){
                return ds.getConnection();
            }else{
                return null;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
//------------------------------------------------------------------------------------------------------------
}
