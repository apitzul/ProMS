<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.container{
    width: 100%;
    margin: auto;
    overflow: hidden;
    margin-top: 20px;
}

.container ul{
    padding: 0px;
    margin: 0px;
}

.container ul li{
    float:left;
    list-style: none;
    width:28%;
    height:270px;
    background: #DCDCDC;
    margin :20px 0px 20px 55px; 
    box-sizing: border-box;
    border-radius: 30px;
}

.container ul li .bottom{
    width: 100%;
    height:50px;
    line-height: 50px;
    background: #DCDCDC;    
    text-align: center;
    color:black;
    font-size: 25px;
   	border-radius: 30px;
}

@media screen and (max-width:1250px){
    .container ul li{
        width:40%;
        margin-left: 40px;
         
    }
}
</style>
<head>
        <title>View Project</title>
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
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="/w3images/avatar2.png" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8 w3-bar ">
      <span>Welcome, <br><strong>Mike</strong></span><br>
      <span>Staff Id:<br><strong> 010234</strong></span><br>
      <span>Department:<strong> Maintenance</strong></span><br>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="w3-bar-block">
    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  My Dashboard</a>
    <a href="listProject.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-eye fa-fw"></i>  Project List</a>
    <a href="viewProject.jsp?user=<%= Employee.getUsername()%>&id=1" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i> View Project</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Task List</a>
    
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
      <h1><b><u>List of Project</u></b></h1>
  </header>
  <div class="container">
        <ul>
            <li> <div class="bottom"><b>Damansara Project</b></div>
            <div class="w3-container">
            Progress:
            <div class="w3-grey">
            <div class="w3-container w3-center w3-padding w3-red" style="width:25%">25%</div>
            </div>
            <br>
            <div>Start Date:</div>
            Est. End Date:
            <p></p>
            <button class="w3-button w3-block w3-dark-grey">View Details</button>
            </div></li>
            <li> <div class="bottom"><b>KLCC Project</b></div>
            <div class="w3-container">
            Progress:
            <div class="w3-grey">
            <div class="w3-container w3-center w3-padding w3-green" style="width:90%">90%</div>
            </div>
            <br>
            <div>Start Date:</div>
            Est. End Date:
            <p></p>
            <button class="w3-button w3-block w3-dark-grey">View Details</button>
            </div></li>
            <li> <div class="bottom"><b>TM Malaysia Project</b></div>
            <div class="w3-container">
            Progress:
            <div class="w3-grey">
            <div class="w3-container w3-center w3-padding w3-yellow" style="width:70%">70%</div>
            </div>
            <br>
            <div>Start Date:</div>
            Est. End Date:
            <p></p>
            <button class="w3-button w3-block w3-dark-grey">View Details</button>
            </div></li>
        </ul>
    </div>
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