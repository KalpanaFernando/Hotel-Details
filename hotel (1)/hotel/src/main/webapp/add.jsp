<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
         <meta charset="ISO-8859-1">
        <title>TOUR PRO</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/book.css">
        <script src="https://kit.fontawesome.com/dbed6b6114.js"></script>
        <link rel = "icon" href = "images/logo.jpg" type = "image/png">
    </head>
    <body>
        
        <header class = "header"  id="slider">
            <div class = "head-top" id="load">
                <div class = "site-name">
                    <a href="index.jsp"><span>TOUR PRO</span></a>
                </div>
                <div class = "site-nav">
                    <span id = "nav-btn">MENU <i class = "fas fa-bars"></i></span>
                    
                </div>
            </div>

            <div class = "head-bottom flex">
                <h2>SUPER-LUXURY HOTELS ARE BEING BUILT IN OUTER SPACE</h2>
                 <p></p>
                <a href="#body"><button type = "button" class = "head-btn">LET'S ADD HOTELS</button></a>
            </div>
        </header>

        <div class = "sidenav" id = "sidenav">
            <span class = "cancel-btn" id = "cancel-btn">
                <i class = "fas fa-times"></i>
            </span>

            <ul class = "navbar">
                <li><a href = "index.jsp">home</a></li>
            </ul>
            <button class = "btn log-in" onclick="location.href='login.jsp'">Admin-login</button>
        </div>
       <div id = "modal"></div>

        <div id="body">
            <div class="container">
    <div class="title"><b>Add Hotels</b></div>
    <div class="content">
      <form action="register" method="post" id="form" name="booking" onsubmit="return validateForm()">
        <div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" name="fname" placeholder="Enter your First Name" required>
          </div>
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" name="lname" placeholder="Enter your Last Name" required>
          </div>
           <div class="input-box">
            <span class="details">Hotel Reg Number</span>
            <input type="text" name="regNo" placeholder="Enter your ID Number" maxlength="10" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" id="email" name="email" onkeydown="validation()" placeholder="Enter your Email" required>
            <span id="text"></span>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phone" placeholder="Enter your Number" maxlength="10" required>
          </div>
          <div class="input-box">
            <span class="details">Location</span>
            <input type="text" name="location" placeholder="Enter your Address" required>
          </div>
          <div class="input-box">
            <span class="details">Available</span>
            <input type="radio" name="radio" value="Available" required>
          </div>
          <div class="input-box">
            <span class="details">Unavailable</span>
            <input type="radio" name="radio" value="Unavailable" required>
          </div>
          <div class="input-boxx">
            <span class="details">Hotel Rating</span>
            <input type="number" name="hotelRating" min="1" max="7" placeholder="Enter Rates" required>
          </div>
           <div class="input-boxx">
            <span class="details">Unavailable Dates</span>
            <input type="date" name="unavailableDates" required>
          </div><br>
           <div class="input-boxxx">
            <span class="details">Description</span>
            <input type="text" name="description" placeholder="Enter Extra Details" required>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Submit">
        </div>
      </form>
    </div>
  </div>


        </div>






        <footer class = "footer">
            <div class = "footer-container">
                <div>
                    <h2>About Us </h2>
                    <p></p>
                    <ul class = "social-icons">
                        <li class = "flex">
                            <i class = "fa fa-twitter fa-2x"></i>
                        </li>
                        <li class = "flex">
                            <i class = "fa fa-facebook fa-2x"></i>
                        </li>
                        <li class = "flex">
                            <i class = "fa fa-instagram fa-2x"></i>
                        </li>
                        <li class = "flex">
                            <i class = "fa fa-linkedin fa-2x"></i>
                        </li>
                    </ul>
                </div>

                <div>
                    <h2>Useful Links</h2>
                    <a href = "#">Blog</a>
                    <a href = "#">Rooms</a>
                    <a href = "#">Subscription</a>
                    <a href = "#">Gift Card</a>
                </div>

                <div>
                    <h2>Privacy</h2>
                    <a href = "#">Career</a>
                    <a href = "#">About Us</a>
                    <a href = "#">Contact Us</a>
                    <a href = "#">Services</a>
                </div>

                <div>
                    <h2>Contact Us</h2>
                    <div class = "contact-item">
                        <span>
                            <i class = "fas fa-map-marker-alt"></i>
                        </span>
                        <span>
                            23/A, Duplication Road, Colombo04, Sri Lanka
                        </span>
                    </div>
                    <div class = "contact-item">
                        <span>
                            <i class = "fas fa-phone-alt"></i>
                        </span>
                        <span>
                            +94 11 255 628
                        </span>
                    </div>
                    <div class = "contact-item">
                        <span>
                            <i class = "fas fa-envelope"></i>
                        </span>
                        <span>
                            info@TourPro.com
                        </span>
                    </div>
                </div>
            </div>
        </footer>
        
        <script src="Script/script.js"></script>
    </body>
</html>