/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.notification;


import com.security.LoginDB;
import com.task.*;
import com.util.DBconnection;
import com.util.dataDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
public class messageDB {
    private message clsMessage;

    public messageDB() {
    }

    public messageDB(message clsMessage) {
        this.clsMessage = clsMessage;
    }

    public message getClsMessage() {
        return clsMessage;
    }

    public void setClsMessage(message clsMessage) {
        this.clsMessage = clsMessage;
    }
    
    public String addMessage(message Message){
        
        int id = Message.getId();
        String title=Message.getTitle();
        String type=Message.getType();
        String remarks=Message.getRemarks();
        String createDate=Message.getCreateDate();
        int empFrom = Message.getEmpFrom();
        int empTo = Message.getEmpTo();
       
        Connection con = null;
        PreparedStatement pstmt = null;
        
        
        try
         {
            con = DBconnection.createConnection(); //Fetch database connection object
            String query = "INSERT INTO TASK(ID,TITLE,TYPE,REMARKS,CREATEDATE,EMPFROM,EMPTO VALUES(?,?,?,?,?,?,7)";
            pstmt = con.prepareStatement(query);
            
            pstmt.setInt(1, id);
            pstmt.setString(2, title);
            pstmt.setString(3, type);
            pstmt.setString(4, remarks);
            pstmt.setString(5, createDate);
            pstmt.setInt(6, empFrom);
            pstmt.setInt(7, empTo);
            
            int R = pstmt.executeUpdate();
            if(R!=0) {
                return "SUCCESS";
            }
            return "Invalid user credentials"; // Return appropriate message in case of failure
        } catch (SQLException ex) {
            Logger.getLogger(taskDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return "Oops...";
    
    }
    
    
    public ArrayList<message> selectMessageEmployee(int empID){
       
        ArrayList<message> messageList=new ArrayList<message>();
        try
         {
             Connection con = DBconnection.createConnection(); //Fetch database connection object
             Statement statement = con.createStatement(); //Statement is used to write queries. Read more about it.
             ResultSet resultSet = statement.executeQuery("select * from message"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.
 
             while(resultSet.next()) // Until next row is present otherwise it return false
             {  task Task = new task();
             
                message Message=new message();
             
                String id= resultSet.getString("id");
                String title= resultSet.getString("title");
                String type= resultSet.getString("type");
                String remarks= resultSet.getString("remarks");
                String createdate= resultSet.getString("createdate");
                
                String empFrom= resultSet.getString("empfrom");
                String empTo= resultSet.getString("empto");
               
                if(empID == (Integer.parseInt(empTo)))
                {
                    Message.setId(Integer.parseInt(id));
                    Message.setTitle(title);
                    Message.setType(type);
                    Message.setRemarks(remarks);
                    Message.setCreateDate(createdate);
                    Message.setEmpFrom(Integer.parseInt(empFrom));
                    Message.setEmpTo(Integer.parseInt(empTo));

                    System.out.println(Task.toString());
                    
                    messageList.add(Message);
                    ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
                }
                
            }
            return messageList;
            } catch (SQLException ex) {
               Logger.getLogger(LoginDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        return messageList;
    }
    public void deleteMessage(){
        
    }
}
