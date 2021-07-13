/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.task;

import com.employee.employee;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author aidie
 */
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class TaskServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TaskServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TaskServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //declare java class
        task Task = new task();
        taskDB TaskDB = new taskDB();
        
        HttpSession session = request.getSession();
        employee Employee = (employee)session.getAttribute("emp");
        
        String ID = request.getParameter("Taskid");
        String TypeID = request.getParameter("TTID");
        String proID = request.getParameter("proID");
        String DueDate = request.getParameter("DueDate");
        LocalDate dueD = LocalDate.parse(DueDate); 
        
        //retrieve employee id 
        int empID = Employee.getId();
        
        //retrieve value status from form
        boolean stats = false;
        boolean lateTask = false;
        String status = request.getParameter("status");
        
        LocalDate CompDate = null;
        if(status.equals("Complete"))
        {
            stats = true;
            CompDate = java.time.LocalDate.now();
            if(CompDate.isAfter(dueD)){
                 lateTask = true;
            }
            Task.setCompletedDate(CompDate.toString());
        }
        
        //retrieve value file from form
        InputStream file = null; // input stream of the upload file
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("uploadFile");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            System.out.println(filePart.getSubmittedFileName());
             
            // obtains input stream of the upload file
            file = filePart.getInputStream();
        }
        String fileName = filePart.getSubmittedFileName();
        
        //retrieve value remarks from form
        String remarks = request.getParameter("taskRemarks");
        
        
        //Setting variables into java class
        Task.setId(Integer.parseInt(ID));
        Task.setType(Integer.parseInt(TypeID));
        Task.setProjectID(Integer.parseInt(proID));
        Task.setEmpID(empID);
        Task.setIsComplete(stats);
        Task.setFile(fileName);
        Task.setRemarks(remarks);
        Task.setLateTask(lateTask);
        
        
        String updateTask = TaskDB.updateTask(Task); 
        
    if(updateTask.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
            {
                
                request.getRequestDispatcher("/listTask.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
            }
            else
            {
                request.setAttribute("errMessage", updateTask); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
                request.getRequestDispatcher("/updateTask.jsp").forward(request, response);//forwarding the request
            }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
