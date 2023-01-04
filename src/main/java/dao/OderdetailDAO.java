package dao;

import models.oderdetail;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class OderdetailDAO {
    static Connection connection = ConnectionMySql.getConnection();
    public static boolean save(oderdetail oderdetail) {
        String sql = "insert into INSERT INTO casestudy_modul3_final.oderdetail (idodertail,idproduct,amount,totalodertail,idoder) VALUES (?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,"default");
            preparedStatement.setInt(2,oderdetail.getIdproduct());
            preparedStatement.setInt(4, oderdetail.getAmount());
            preparedStatement.setDouble(3, oderdetail.getTotaloderdetail());
            preparedStatement.setInt(3, oderdetail.getIdoder());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
