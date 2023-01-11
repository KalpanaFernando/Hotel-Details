<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Report</title>
    <link rel="stylesheet" href="CSS/style.css">
	<link rel="stylesheet" href="CSS/style2.css">
	<link rel="stylesheet" type="text/css" href="CSS/viewtable.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta location="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
  <img class="img" src="img\logo1.jpg" style="width:160px; top: 40px; margin:20px">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Tour Pro</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="GuideForm.jsp" >
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Add Form</span>
          </a>
        </li>
        <li>
          <a href="GuideView.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name">View Details</span>
          </a>
        </li>
        <li>
          <a href="GuideSearch.jsp">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Search</span>
          </a>
        </li>
        <li>
          <a href="GuideReport.jsp" class="active">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Report</span>
          </a>
        </li>
        
        <li class="log_out">
          <a href="Home.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Report</span>
      </div>
    </nav>


	  

    <div class="testbox">
   <form action="GuideReportProcess.jsp" method="post">
      <div class="banner">
     <h1>Hotels Report</h1>
      </div>
      <br/>
      <fieldset>
        <legend>Hotel Report Details</legend>
        <div class="columns">
        
          <div class="item">
            <label for="event">Report ID<span>*</span></label>
            <input id="rID" type="text" name="rID" >
          </div>
          <div class="item">
            <label for="venue">Report Name<span>*</span></label>
            <input id="rName" type="text" name="rName" >
          </div>
      </fieldset>
      <br/>
      <div class="btn-block">
      <button type="submit" value="Submit">Download</button>
      </div>
      
    </form>
    </div>


    </div>
  </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>
