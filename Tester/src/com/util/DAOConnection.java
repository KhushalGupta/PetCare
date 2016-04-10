package com.util;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.*;

/**
 *
 * @author vj
 */
public  class DAOConnection {
static Connection con;
static String username = null;
static String password = null;

 
   public static Connection sqlconnection(){
       try{
           String dbUrl = "jdbc:oracle:thin:@localhost:1521:xe";
           Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
           con=DriverManager.getConnection(dbUrl,"system","root");              
           System.out.println("Connection established for oracle");
       }catch(Exception e){
           System.out.println("Database connection exception="+e);
       }
       return con;    
    
}    
    
}
