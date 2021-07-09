/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.notification;


import com.task.*;
import com.util.dataDB;
import java.util.ArrayList;


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
    
    public void addMessage(){
        
    }
    
    public ArrayList<message> selectMessage(String empId){
        
        
        task task=new task();
        taskDB taskDB=new taskDB();
        dataDB data=new dataDB();
        
        ArrayList<message> messageList = new ArrayList<message>();
        ArrayList<task> taskList=new ArrayList<task>();
        taskList=taskDB.selectTask(empId);
        
        if(!taskList.isEmpty()){
            
            for(int i=0;i<taskList.size();i++){
                message Message = new message();
                Message.setTitle(task.getTitle());
                Message.setType("Task");
                Message.setCreateDate(task.getStartDate());
                Message.setRemarks(task.getRemarks());

                messageList.add(Message);
            }
        }

        return messageList;
    }
    
    public void deleteMessage(){
        
    }
}
