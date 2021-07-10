<%@page import="com.project.client"%>
<%@page import="com.project.supplier"%>
<%@page import="com.project.project"%>
<%@page import="com.project.projectDB"%>
<%@page import="com.employee.employeeDB"%>
<%@page import="com.employee.employee"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=radio]{
    margin-left: 10px;
}

input[type=file] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

input[type=reset] {
  background-color: #CD5C5C;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=reset]:hover {
  background-color: #B22222;
}
</style>
<head>
        <title>Update Task</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
  <span class="w3-bar-item w3-right">MKR Hartamas</span>
</div>

<!-- Sidebar/menu -->
        <%employee Employee = (employee)session.getAttribute("emp");
        %>
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="Image/<%= Employee.getImg()%>" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8 w3-bar ">
      <span>Welcome, <br><strong><%= Employee.getName()%></strong></span><br>
      <span>Staff Id:<br><strong><%= Employee.getId()%></strong></span><br>
      <span>Department:<br><strong><%= Employee.getDepname()%></strong></span><br>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="w3-bar-block">
   <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <a href="home.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-users fa-fw"></i>  Home</a>
    <a href="listProject.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  Project List</a>
    <a href="viewProject.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i> View Project</a>
    <a href="updateTask.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Update Task</a>
    <a href="listTask.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Task List</a>
    <a href="addProject.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Add project</a>
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <% 
            String id = request.getParameter("id");
            projectDB proDB = new projectDB();
            project Pro = proDB.selectProject(Integer.parseInt(id));
            
            supplier supp = (supplier) Pro.getSupplier();
            client clie = (client) Pro.getClient();
            
            
        %>
  <header class="w3-container" style="padding-top:22px">
      <h1><b>Update Task</b></h1>
  </header>
    <div class="w3-container">
    <div class="w3-grey">
    </div>
    </div>
  <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-twothird">
        <table class="w3-table w3-striped w3-white">
        <form name="form" action="taskList.jsp" method="post">
          <tr>
              <td><h5><b>Task Type:</b></h5>
              <input type="text" name="taskType" placeholder="Enter task type"/></td>
          </tr>
          <tr>
              <td><h5><b>Status:</b></h5>
                <input type="radio" id="complete" name="status" value="Complete">
                <label for="complete">Complete</label>
                <input type="radio" id="pending" name="status" value="Pending">
                <label for="pending">Pending</label>
            </td>
          </tr>
          <tr>
              <td><h5><b>Department:</b></h5>
                <input type="radio" id="admin" name="department" value="Administration">
                <label for="admin">Administration </label>
                <input type="radio" id="mainten" name="department" value="Maintenance">
                <label for="mainten">Maintenance</label>
                <input type="radio" id="sale" name="department" value="Sale">
                <label for="sale">Sale</label>
                <input type="radio" id="financ" name="department" value="Financial">
                <label for="financ">Financial</label></td>
          </tr>
          <tr>
              <td><h5><b>Title:</b></h5>
              <input type="text" name="taskTitle" placeholder="Enter task title"/>
              <input type="file" name="uploadFile" id="uploadFile"></td>
          </tr>
          <tr>
              <td><h5><b>Remarks:</b></h5>
              <textarea id="taskRemarks" name="taskRemarks" placeholder="Write detail progress" style="height:200px"></textarea>
              </td>
          </tr>
          <tr>
            <td><input type="submit" value="Save Update"></input>
                <input type="reset" value="Cancel Update"></input></td>
          </tr>
          <tr>
          </tr>
        </form>
        </table>
      </div>
    </div>
  </div>
  <hr>
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
