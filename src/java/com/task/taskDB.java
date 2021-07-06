/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.task;

import com.employee.employee;
import com.security.LoginDB;
import com.util.DBconnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author apitz
 */
public class taskDB {
    private task clsTask;

    public taskDB() {
    }

    public taskDB(task clsTask) {
        this.clsTask = clsTask;
    }

    public task getClsTask() {
        return clsTask;
    }

    public void setClsTask(task clsTask) {
        this.clsTask = clsTask;
    }
    
    public task selectTask(String taskId){
        task task = new task();
        
        try
         {
             Connection con = DBconnection.createConnection(); //Fetch database connection object
             Statement statement = con.createStatement(); //Statement is used to write queries. Read more about it.
             ResultSet resultSet = statement.executeQuery("select * from task"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.
 
             while(resultSet.next()) // Until next row is present otherwise it return false
             {
                String id= resultSet.getString("id");;
                String type= resultSet.getString("empname");;
                String status= resultSet.getString("empname");;
                String department= resultSet.getString("empname");;
                String title= resultSet.getString("empname");;
                String file= resultSet.getString("empname");;
                String remarks= resultSet.getString("empname");;
                String startDate= resultSet.getString("empname");;
                String dueDate= resultSet.getString("empname");;
                String completedDate= resultSet.getString("empname");;
                String isComplete= resultSet.getString("empname");;
                String lateTask= resultSet.getString("empname");;
                String projectID= resultSet.getString("empname");;
                String empID= resultSet.getString("empname");;
                

                if(taskId.equals(id))
                {
                    task.setCompletedDate(completedDate);
                    task.setDepartment(department);
                    task.setDueDate(dueDate);
                    task.setEmpID(0);
                    task.setFile(file);
                    task.setId(0);
                    task.setIsComplete(true);
                    task.setLateTask(true);
                    task.setProjectID(0);
                    task.setRemarks(remarks);
                    task.setStartDate(startDate);
                    task.setTitle(title);
                    task.setStatus(status);
                    task.setType(type);

                    System.out.println(task.toString());
                    return task; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
                }
            }
            } catch (SQLException ex) {
               Logger.getLogger(LoginDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        return task;
    }
    
    public void deleteTask(){
        
    }
    
    public void addTask(){
        
    }
    
    public void updateTask(){
        
    }
    
}
