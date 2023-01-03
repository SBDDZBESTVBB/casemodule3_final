package dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public interface InterfaceDAO<E,K> {
    List<E> findAll() throws SQLException, ClassNotFoundException;
    void setStatement(E e, PreparedStatement statement) throws SQLException;


}
