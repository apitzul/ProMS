<%-- 
    Document   : addNewSupplier
    Created on : Jul 9, 2021, 10:47:33 PM
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
        <label for="cName"><b>Supplier Name</b></label>
        <input type="text" placeholder="Enter name" name="sName" required>
        
        <label for="cContact"><b>Supplier Contact</b></label>
        <input type="text" placeholder="Enter contact" name="sContact" required>
        
        <label for="adress"><b>Supplier Address</b></label>
        <input type="text" placeholder="Client address" name="sAddress" required>
        
        <button type="submit">Add Supplier</button>
        <button type="reset ">cancel</button>
    </body>
</html>
