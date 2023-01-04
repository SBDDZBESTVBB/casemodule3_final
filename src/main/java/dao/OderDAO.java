package dao;

import models.Product;
import models.oder;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;


public class OderDAO {
    static Connection connection = ConnectionMySql.getConnection();
public static ArrayList<oder> showalloder (){
    ArrayList<oder> oders = new ArrayList<>();
    String sql = "Select * from casestudy_modul3_final.oder";
    try {
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
            int id = resultSet.getInt("idoder");
            Date date = resultSet.getDate("date");
            double totaloder = resultSet.getDouble("totaloder");
            int iduse = resultSet.getInt("iduser");
            oders.add(new oder(id,date,totaloder,iduse));
        }
    } catch (Exception e) {
        throw new RuntimeException(e);
    }
    return oders;

    }
    public static void creatoderbyiduser (int iduser){
    String sql = "INSERT INTO casestudy_modul3_final.oder VALUE (DEFAULT,curdate(),DEFAULT,"+iduser+")";
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public static int getlastidoder(int iduser){
       String sql = "select last_insert_id() idoder from casestudy_modul3_final.oder where iduser="+iduser;
       int idoder;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            idoder = resultSet.getInt("idoder");

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return idoder;
    }

}
