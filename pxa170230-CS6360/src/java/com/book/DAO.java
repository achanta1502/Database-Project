/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.book;

/**
 *
 * @author achan
 */
import java.sql.*;

public class DAO {
    public Connection getConnection(){
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","Ach2207");
        return connection;}
        catch(Exception e){System.out.println(e);}
    return null;       
    }
    public int InsertData(String name){
       
        try{
            Statement st=getConnection().createStatement();
            int a=st.executeUpdate("insert into hello values('"+name+"')");
           
        }catch(SQLException e){
            e.printStackTrace();
        }
        return 0;
    }
}
