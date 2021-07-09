<%-- 
    Document   : addNewClient
    Created on : Jul 9, 2021, 10:45:41 PM
    Author     : Faiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <label for="cName"><b>Client Name</b></label>
        <input type="text" placeholder="Enter name" name="cName" required>
        
        <label for="cContact"><b>Client Contact</b></label>
        <input type="text" placeholder="Enter contact" name="cContact" required>
        
        <label for="adress"><b>Client Address</b></label>
        <input type="text" placeholder="Client address" name="cAddress" required>
        
        <button type="submit">Add Client</button>
        <button type="reset ">cancel</button>
    </body>
</html>
