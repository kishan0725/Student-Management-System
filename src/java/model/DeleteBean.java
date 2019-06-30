/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.io.PrintWriter;
import static java.lang.System.out;

/**
 *
 * @author kishan
 */
public class DeleteBean {
    private String id;
    private Object response;
   

    public String getID() {
        return id;
    }

    public void setID(String id) {
        this.id = id;
    }
    public int Delete() throws NamingException, SQLException{
        int i=0;
        Context x = new InitialContext();
            DataSource ds =(DataSource) x.lookup("StudentResource");
        try (Connection con = ds.getConnection()) {
            String sql="delete from student where sid=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            i = ps.executeUpdate();
            
           
        }
        catch(Exception e){
            System.out.println(e);
        }
        return i;
            
        
            
    }   } 


