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
import java.util.ArrayList;
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
    
    public ArrayList<task> selectTask(String projId){
        task task = new task();
        ArrayList<task> taskList=new ArrayList<task>();
        try
         {
             Connection con = DBconnection.createConnection(); //Fetch database connection object
             Statement statement = con.createStatement(); //Statement is used to write queries. Read more about it.
             ResultSet resultSet = statement.executeQuery("select * from task"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.
 
             while(resultSet.next()) // Until next row is present otherwise it return false
             {
                String id= resultSet.getString("id");
                String type= resultSet.getString("type");
                String status= resultSet.getString("status");
                String department= resultSet.getString("department");
                String title= resultSet.getString("title");
                String file= resultSet.getString("file");
                String remarks= resultSet.getString("remarks");
                String startDate= resultSet.getString("startDate");
                String dueDate= resultSet.getString("dueDate");
                String completedDate= resultSet.getString("completedDate");
                String isComplete= resultSet.getString("isComplete");
                String lateTask= resultSet.getString("lastTask");
                String projectID= resultSet.getString("projectId");
                String empID= resultSet.getString("empId");
                

                if(projId.equals(projectID))
                {
                    task.setCompletedDate(completedDate);
                    task.setDepartment(department);
                    task.setDueDate(dueDate);
                    task.setEmpID(Integer.parseInt(empID));
                    task.setFile(file);
                    task.setId(Integer.parseInt(id));
                    task.setIsComplete(Boolean.parseBoolean(isComplete));
                    task.setLateTask(Boolean.parseBoolean(lateTask));
                    task.setProjectID(Integer.parseInt(projectID));
                    task.setRemarks(remarks);
                    task.setStartDate(startDate);
                    task.setTitle(title);
                    task.setStatus(status);
                    task.setType(type);

                    System.out.println(task.toString());
                    
                    taskList.add(task);
                    ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
                }
                
            }
        return taskList;
            } catch (SQLException ex) {
               Logger.getLogger(LoginDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        return taskList;
    }
    
    public void deleteTask(){
        
    }
    
    public void addTask(){
        
    }
    
    public void updateTask(){
        
    }
    
}
