<%@page import="com.project.client"%>
<%@page import="com.util.dataDB"%>
<!DOCTYPE html>
<html>

<title>Add project</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
  <span class="w3-bar-item w3-right">Logo</span>
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="/w3images/avatar2.png" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8 w3-bar">
      <span>Add your project, <strong>here</strong></span><br>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i></a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-user"></i></a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="w3-bar-block">
   <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <a href="#" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-users fa-fw"></i>  My Dashboard</a>
    <a href="listProject.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  Project List</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i> View Project</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Task List</a>
    <a href="addProject.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Add project</a>
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h1><b><i class="fa fa-dashboard"></i> Add Project</b></h1>
  </header>



  <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third">
        

  <div class="w3-container">
 <header class="w3-container" style="padding-top:22px">
    <h5><b><i class="fa fa-dashboard"></i> Project information :</b></h5>
  </header>
      
    <a href="addNewClient.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Add Client</a>
    <a href="addNewSupplier.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Add Supplier</a>
    <head>
        <style> 
            form {
                border: 3px solid #f1f1f1;
            }

            /* Full-width inputs */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            /* Set a style for all buttons */
            button {
                background-color: #04AA6D;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }

            /* Add a hover effect for buttons */
            button:hover {
                opacity: 0.8;
            }

            /* Extra style for the cancel button (red) */
            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            /* Center the avatar image inside this container */
            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
            }

            /* Avatar image */
            img.avatar {
                width: 40%;
                border-radius: 50%;
            }

            /* Add padding to containers */
            .container {
                padding: 16px;
            }

            /* The "Forgot password" text */
            span.psw {
                float: right;
                padding-top: 16px;
            }   

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cancelbtn {
                width: 100%;
            }
            }
        </style>
        
<div class="container">
        <label for="projectName"><b>Tittle </b></label>
        <input type="text" placeholder="Enter project" name="projectName" required>
        
        <input list="browsers" name="browser" id="browser">

            <datalist id="browsers">
              
                <%
                    client Client=new client();
                    dataDB data=new dataDB();
                    
                for(int i=1;i<=data.getSize("client");i++){
                    
                }
                %>
                <option value="Edge">
            </datalist>
        
        <label for="cName"><b>Client Name</b></label>
        <input type="text" placeholder="Enter name" name="cName" required>
        
        
        <label for="spName"><b>Supplier name</b></label>
        <input type="text" placeholder="Enter supplier name" name="spName" required>
        
        <label for="adress"><b>Project Address</b></label>
        <input type="text" placeholder="Project address" name="address" required>
        
        <label for="adress"><b>Start Date</b></label>
        <input type="date" placeholder="Start date" name="startDate" required>
        
        <label for="adress"><b>Estimated end date</b></label>
        <input type="date" placeholder="Estimated end date" name="estEndDate" required>
        
        <label for="adress"><b>quatation file</b></label>
        <input type="file" name="qFile" required>
        
        

        <button type="submit">Add project</button>
        <button type="reset ">cancel</button>
       
        </div>

  <!-- Footer -->
  <footer class="w3-container w3-padding-16 w3-light-grey">
    <h4>FOOTER</h4>
    <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
  </footer>

  <!-- End page content -->
</div>

<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}
</script>

</body>
</html>
