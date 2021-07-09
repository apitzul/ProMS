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
public class clientDB {
    private client clsClient;

    public clientDB() {
    }

    public clientDB(client clsClient) {
        this.clsClient = clsClient;
    }

    public client getClsClient() {
        return clsClient;
    }

    public void setClsClient(client clsClient) {
        this.clsClient = clsClient;
    }


    public void addClient(){
        
    }
    
    public void deleteClient(){
        
    }
    
    public ArrayList<client> selectClient(){
        ArrayList<client> clientList = new ArrayList<client>();
        
        try
         {
             Connection con = DBconnection.createConnection(); //Fetch database connection object
             Statement statement = con.createStatement(); //Statement is used to write queries. Read more about it.
             ResultSet resultSet = statement.executeQuery("select * from client"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.
 
             while(resultSet.next()) // Until next row is present otherwise it return false
             {  
                 client client=new client();
             
                String clientname = resultSet.getString("clientname");//fetch the values present in database
                String clientid = resultSet.getString("clientid"); 
                String contact = resultSet.getString("depname");
                String address = resultSet.getString("address"); 

                //client.setClientID();
                client.setClientName(clientname);
                client.setClientContact(contact);
                client.setClientAddress(address);
                System.out.println(client.toString());
                 ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
                clientList.add(client);
                
            }
            return clientList;
            } catch (SQLException ex) {
               Logger.getLogger(LoginDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        return clientList;  
    }
    
    public void updateClient(){
        
    }
}
