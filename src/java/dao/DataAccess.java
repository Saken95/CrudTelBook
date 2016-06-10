
package dao;

import db.DBUtils;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.News;

/**
 *
 * @author Thang
 */
public class DataAccess {
    public void addNew(News n){
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into News values(?,?,?,?)");
            ps.setString(1, n.getName());
            ps.setString(2, n.getSurname());
            ps.setString(3, n.getPhone());
            ps.setString(4, n.getEmail());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<News> getAll(){
        List<News> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from News").executeQuery();
            while(rs.next()){
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    public static List<News> getNewById(int id){
        List<News> ls = new LinkedList<>();
        String sql = "select * from News where id = " +id;
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
    
    public void edit(int id, String name, String surname, String phone, String email){
        try {
            String sql = "update News SET name = ?, surname = ?, phone = ?, email = ?" + " where id = ?";
            PreparedStatement ps= DBUtils.getPreparedStatement(sql);
            ps.setString(1, name);
            ps.setString(2, surname);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void delete(int id){
        try {
            String sql = "delete News where id = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
