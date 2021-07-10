/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project;

import com.security.LoginDB;
import com.util.DBconnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author apitz
 */
public class supplierDB {
    private supplier clsSupplier;

    public supplierDB() {
    }

    public supplierDB(supplier clsSupplier) {
        this.clsSupplier = clsSupplier;
    }

    public supplier getClsSupplier() {
        return clsSupplier;
    }

    public void setClsSupplier(supplier clsSupplier) {
        this.clsSupplier = clsSupplier;
    }

    public void addSupplier(){
        
    }
    
    public void deleteSupplier(){
        
    }
    
    public ArrayList<supplier> selectSupplier(){
       ArrayList<supplier> supplierList = new ArrayList<supplier>();
        
        try
         {
             Connection con = DBconnection.createConnection(); //Fetch database connection object
             Statement statement = con.createStatement(); //Statement is used to write queries. Read more about it.
             ResultSet resultSet = statement.executeQuery("select * from supplier"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.
 
             while(resultSet.next()) // Until next row is present otherwise it return false
             {  
                 supplier supplier=new supplier();
             
                String suppliername = resultSet.getString("name");//fetch the values present in database
                String supplierid = resultSet.getString("id"); 
                String contact = resultSet.getString("contact");
                String address = resultSet.getString("address"); 

                supplier.setSupID(Integer.parseInt(supplierid));
                supplier.setSupName(suppliername);
                supplier.setSupContact(contact);
                supplier.setSupAddress(address);
                System.out.println(supplier.toString());
                 ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
                supplierList.add(supplier);
                supplier.toString();
            }
            return supplierList;
            } catch (SQLException ex) {
               Logger.getLogger(LoginDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        return supplierList;   
    }
    
    public void updateSupplier(){
        
    }
}
