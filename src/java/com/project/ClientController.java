/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project;

import com.employee.employee;
import com.employee.employeeDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aidie
 */
public class ClientController extends HttpServlet {

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
            out.println("<title>Servlet ClientController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ClientController at " + request.getContextPath() + "</h1>");
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
        
        String user = request.getParameter("user");
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        List errorMsgs = new LinkedList();
        
            
            //Retrive form parameters
            
            String name = request.getParameter("cName");
            String phone = request.getParameter("cContact");
            String address = request.getParameter("cAddress");
            
            //Form Verification 
            if (name == null || name.trim().length() == 0) {
                errorMsgs.add("Please insert name.");
            }
            if (phone == null || phone.trim().length() == 0) {
                errorMsgs.add("Please insert Phone number.");
            }
            if (address == null || address.trim().length() == 0) {
                errorMsgs.add("Please insert designation.");
            }
            
            //Business logic
            client Client = new client();
            Client.setClientName(name);
            Client.setClientContact(phone);
            Client.setClientAddress(address);
            
            clientDB ClientDB = new clientDB();
            
            String clientRegistered = ClientDB.addClient(Client);
            
            if(clientRegistered.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
            {
                employeeDB emp = new employeeDB();
                employee Employee = new employee();
                Employee = emp.selectEmp(user);
                request.setAttribute("emp", Employee);//with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
                request.getRequestDispatcher("/addProject.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
            }
            else
            {
                request.setAttribute("errMessage", clientRegistered); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
                request.getRequestDispatcher("/home.jsp").forward(request, response);//forwarding the request
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