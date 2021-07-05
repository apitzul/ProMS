<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
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
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i>  Project List</a>
    <a href="viewProject.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-eye fa-fw"></i> View Project</a>
    <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Task List</a>
    
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
      <h1><b><u>Damansara Project</u></b></h1>
  </header>
    <div class="w3-container">
        <p><h5><b>Progress</b></h5></p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-green" style="width:25%">25%</div>
    </div>
    </div>
  <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-twothird">
          <h5><b>Details</b></h5>
        <table class="w3-table w3-striped w3-white">
          <tr>

            <td><h5>Title:</h5></td>
            <td><h5>Damansara Project</h5></td>
          </tr>
          <tr>

            <td><h5>Client Name:</h5></td>
            <td><h5>En. Mustafa Kamal</h5></td>
          </tr>
          <tr>

            <td><h5>Client Contact:</h5></td>
            <td><h5>012-3456789</h5></td>
          </tr>
          <tr>

            <td><h5>Supplier Name:</h5></td>
            <td><h5>Karim Enterprise</h5></td>
          </tr>
          <tr>

            <td><h5>Supplier Contact:</h5></td>
            <td><h5>012-3456789</h5></td>
          </tr>
          <tr>

            <td><h5>Project Address:</h5></td>
            <td><h5>Seksyen 30, Shah Alam</h5></td>
          </tr>
          <tr>

            <td><h5>Start Date:</h5></td>
            <td><h5>12/03/2021</h5></td>
          </tr>
          <tr>

            <td><h5>Est. End Date:</h5></td>
            <td><h5>10/09/2021</h5></td>
          </tr>
          <tr>
              
          </tr>
        </table>
      </div>

      <div class="w3-twothird">
          <h5><b>Progress Log</b></h5>
        <table class="w3-table w3-striped w3-white">
          <tr>
              <td><b>Date</b></td>
              <td><b>Department</b></td>
              <td><b>Title</b></td>
              <td><b>Status</b></td>
              <td><b>Remarks</b></td>
          </tr>
          <tr>
            <td>12/03/2021</td>
            <td>Account</td>
            <td>Damansara Project</td>
            <td>Ongoing</td>
            <td>Prepare PO</td>
          </tr>
          <tr>
            <td>12/03/2021</td>
            <td>Account</td>
            <td>Damansara Project</td>
            <td>Ongoing</td>
            <td>Prepare PO</td>
          </tr>
          <tr>
            <td>12/03/2021</td>
            <td>Account</td>
            <td>Damansara Project</td>
            <td>Ongoing</td>
            <td>Prepare PO</td>
          </tr>
          <tr>
            <td>12/03/2021</td>
            <td>Account</td>
            <td>Damansara Project</td>
            <td>Ongoing</td>
            <td>Prepare PO</td>
          </tr>
          <tr>
            <td>12/03/2021</td>
            <td>Account</td>
            <td>Damansara Project</td>
            <td>Ongoing</td>
            <td>Prepare PO</td>
          </tr>
          </tr>
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
