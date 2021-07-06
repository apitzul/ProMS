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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author apitz
 */
public class projectDB {
    private project clsProject;

    public projectDB() {
    }

    public projectDB(project clsProject) {
        this.clsProject = clsProject;
    }

    public project getClsProject() {
        return clsProject;
    }

    public void setClsProject(project clsProject) {
        this.clsProject = clsProject;
    }

    
    
    public void addProject(){
        
    }
    
    public void deleteProject(){
        
    }
    
    public project selectProject(int id){
        project pro = new project();
        supplier supp = new supplier();
        client clie = new client();
        
        try
         {
             Connection con = DBconnection.createConnection(); //Fetch database connection object
             Statement statement = con.createStatement(); //Statement is used to write queries. Read more about it.
             ResultSet resultSet = statement.executeQuery("select "+
                     "project.\"proID\", project.title, project.address, project.startdate, project.estenddate, project.clientid, project.supplierid, project.status, "+
                     "client.id, client.name AS clientName, client.contact AS clientCont, supplier.id, supplier.name AS suppName, supplier.contact AS suppCont "+
                     "from project JOIN client ON project.clientid = client.id JOIN supplier ON project.supplierid = supplier.id"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.
 
             while(resultSet.next()) // Until next row is present otherwise it return false
             {
                String title = resultSet.getString("title");//fetch the values present in database
                String proID = resultSet.getString("proID");
                String clientName = resultSet.getString("clientname");
                String clientCont = resultSet.getString("clientcont");
                String suppName = resultSet.getString("suppname");
                String suppCont = resultSet.getString("suppcont");
                String address = resultSet.getString("address");
                String status = resultSet.getString("status");
                String startDate = resultSet.getString("startdate"); 
                String estEndDate = resultSet.getString("estenddate");
                

                if(id == Integer.parseInt(proID))
                {
                    pro.setTitle(title);
                    pro.setId(Integer.parseInt(proID));
                    pro.setAddress(address);
                    clie.setClientName(clientName);
                    clie.setClientContact(clientCont);
                    supp.setSupName(suppName);
                    supp.setSupContact(suppCont);
                    pro.setStartDate(startDate);
                    pro.setEstEndDate(estEndDate);
                    pro.setStatus(Integer.parseInt(status));
                    
                    pro.setSupplier(supp);
                    pro.setClient(clie);
                    
                    return pro; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
                }
            }
            } catch (SQLException ex) {
               Logger.getLogger(LoginDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        return pro;
        
    }
    
    public void updateProject(){
        
    }
}
