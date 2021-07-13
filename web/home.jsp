<%@page import="com.employee.employee"%>
<!DOCTYPE html>
<html>
<title>MKR Hartamas Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}

footer{
    background-color:lightgray;
    font-size: 12px;
    line-height: 0.8;
}
</style>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
  <span class="w3-bar-item w3-right"> MKR Hartamas</span>
</div>

<!-- Sidebar/menu -->
        <% employee Employee = (employee)session.getAttribute("emp");
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
    <a href="home.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-home fa-fw"></i>  Home</a>
    <a href="addProject.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Add project</a>
    <a href="listProject.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  Project List</a>
    <a href="viewProject.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i> View Project</a>
    <a href="updateTask.jsp?id=1" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Update Task</a>
    <a href="listTask.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Task List</a>
    <a href="viewReport.jsp?id=1" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i> View Report</a>
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h1><b>Home</b></h1>
  </header>

  <div class="w3-row-padding w3-margin-bottom">
    <div class="w3-quarter">
      <div class="w3-container w3-red w3-padding-16">
        <div class="w3-left"><i class="fa fa-bell w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>52</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Task</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left"><i class="fa fa-laptop  w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>22</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Project</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-teal w3-padding-16">
        <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>4</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Department</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"><i class="fa fa-user w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>40</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Employee</h4>
      </div>
    </div>
  </div>

  <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-twothird">
          <h4><b>Feeds</b></h4>
        <table class="w3-table w3-striped w3-white">
          <tr>
            <td><i class="fa fa-laptop w3-text-blue w3-large"></i></td>
            <td>New project: Gamuda Tower.</td>
            <td><i>10 mins ago</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
            <td>Finance Department generate invoice to client.</td>
            <td><i>15 mins ago</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
            <td>FInance Department generate POV to supplier.</td>
            <td><i>17 mins ago</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-laptop w3-text-blue w3-large"></i></td>
            <td>New project: MRT Kajang.</td>
            <td><i>25 mins ago</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
            <td>If warranty still available, do maintenance.</td>
            <td><i>28 mins ago</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-laptop w3-text-blue w3-large"></i></td>
            <td>New project: PLUS Project.</td>
            <td><i>35 mins ago</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
            <td>If there is POV balance, finance pay at supplier.</td>
            <td><i>39 mins ago</i></td>
          </tr>
        </table>
      </div>
    </div>
  </div>
  <hr>
  <div class="w3-container">
      <h4><b>Employee of The Month</b></h4>
    <ul class="w3-ul w3-card-4 w3-white">
      <li class="w3-padding-16">
        <img src="/Image/afiq.jpeg" class="w3-left w3-circle w3-margin-right" style="width:35px">
        <span class="w3-xlarge">Jenglot</span><br>
      </li>
      <li class="w3-padding-16">
        <img src="/Images/charlie.jpg" class="w3-left w3-circle w3-margin-right" style="width:35px">
        <span class="w3-xlarge">Spongebob</span><br>
      </li>
      <li class="w3-padding-16">
        <img src="/Images/charlie.jpg" class="w3-left w3-circle w3-margin-right" style="width:35px">
        <span class="w3-xlarge">Squidward</span><br>
      </li>
    </ul>
  </div>
  <hr>
  <div class="w3-container">
    <h4><b>Department Stats</b></h4>
    <p></p>
    <p>Administration</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-green" style="width:75%">75%</div>
    </div>

    <p>Maintenance</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-orange" style="width:60%">60%</div>
    </div>

    <p>Sale</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-red" style="width:50%">50%</div>
    </div>
    
    <p>Finance</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-red" style="width:25%">25%</div>
    </div>
  </div>
  <p></p>
  <br>
  <hr>
  <footer class="w3-container w3-padding-16">
    <p>&#169; 2015 MKR HARTAMAS SDN BHD (1168188)</p>
    <p>e: hello@mkrhartamas.com</p>
    <p>t: +603-26157917</p>
</footer>
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
