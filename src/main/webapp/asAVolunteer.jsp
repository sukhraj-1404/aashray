<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<title>Volunteer-Aashray</title>
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="modal.css">
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark navbar-fixed-top">
        <div class="container-fluid">
          <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home</a>
              </li>&nbsp;&nbsp;&nbsp;&nbsp;
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#Who_we_are" data-bs-target="dropdown">Who We Are?</a>
                <ul class="dropdown-menu">
                  <li><a href="index.jsp#Who_we_are" class="dropdown-item">About Us</a></li>
                  <li><a href="mission&vision.jsp" class="dropdown-item">Mission & Vision</a></li>
                </ul>
              </li>&nbsp;&nbsp;&nbsp;&nbsp;
              <li class="nav-item">
                <a class="nav-link" href="events.jsp">Events</a>
              </li>&nbsp;&nbsp;&nbsp;&nbsp;
              <li class="nav-item">
                <a class="nav-link" href="portfolio.jsp">Portfolio</a>
              </li>&nbsp;&nbsp;&nbsp;&nbsp;
              <li class="nav-item">
                <a class="nav-link" href="faq.jsp">FAQ</a>
              </li>&nbsp;&nbsp;&nbsp;&nbsp;
              <li class="nav-item">
                <a class="nav-link" href="getInTouch.jsp">Get In Touch</a>
              </li>&nbsp;&nbsp;&nbsp;&nbsp;
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="index.jsp" data-bs-toggle="dropdown">Start A Chapter</a>
                <ul class="dropdown-menu">
                  <li><a href="asAVolunteer.jsp" class="dropdown-item">As A Volunteer</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                  <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
                  <button class="btn btn-info" data-toggle="modal" data-target="#loginModal" style="margin-top: 13px;"><span class="glyphicon glyphicon-user"></span>Admin Login</button>
           </ul>
          </div>
        </div>
      </nav>
      
      <!-- Modal Admin Login -->
  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="loginModalLabel">Admin Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="AdminLogin" method="post">
          <div class="form-group">
            <label for="emailInput" class="text-muted">Email address</label>
            <input type="email" class="form-control" id="emailInput" aria-describedby="emailHelp" placeholder="Enter email" pattern="[^ @]*@[^ @]*" required="required" name="email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
          </div>
          <div class="form-group">
            <label for="passwordInput" class="text-muted">Password</label>
            <input type="password" class="form-control" id="passwordInput" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required="required" name="password">
          </div>
          <div class="text-center">
            <button type="submit" class="btn btn-primary">Admin Login</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
      
      <!-- Volunteer Heading -->
        <div class="row">
            <div class="col-sm-12">
                <h1 class="volunteer_heading">Volunteer</h1>
            </div>
        </div>

        <!-- left Side -->
        <div class="row">
            <div class="col-sm-6">
                <div class="leftSideVolunteer">
                    <img src="images/groupPic.jpg" alt="">
                </div>
                <div class="volunteerOfAashray">
                    <div class="volunteerOfAashray_heading">
                        <h2>Volunteer Of Aashray: </h2>
                    </div>
                    <p>
                    Aashray, a leading NGO in India, offers numerous opportunities to those in need, supporting minorities, people facing poverty, and those seeking government scheme support. 
                        As a volunteer for Aashray, you can help make a difference in the lives of people and communities across India. 
                        By volunteering with Aashray, you can contribute your time and skills to a range of initiatives, including raising awareness of government schemes, 
                        assisting with applications, and providing essential aid. The foundation is committed to making a positive impact on society and welcomes individuals who share their vision to join their efforts. 
                        If you’re interested in volunteering for Aashray, visit their website or contact them directly for further information.
                    </p>
                </div>
                <div class="volunteerEligiblity">
                    <div class="volunteerEligiblity_heading">
                        <h2>
                            Eligibility criteria to Volunteer for Aashray :
                        </h2>
                    </div>
                    <p>
                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Person 18 years and above of age. <br>
                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Person with no criminal records. <br>
                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Person interested in social work. <br>
                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Aashray has the right to approve or reject volunteer applications at any time. <br>
                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Aashray has the right to approve or reject the Donation/donation application at any time. <br>
                        <span class="glyphicon glyphicon-star" aria-hidden="true"></span> No person will misuse the name of the Aashray for their false intentions, in case a person is found guilty, strict action will be taken against him. <br>
                    </p>
                </div>
            </div>
            
            <div class="col-sm-6">
              <div class="volunteerForm">
                <div class="volunteerHeading">
                  <h2>Volunteer's Application Form</h2>
                </div>
                <div id="volunMsg">
                <%
					String msg=(String)session.getAttribute("msg");
					if(msg!=null)
					{%>
						<h4 class="text-center text-success"><%=msg %></h4>
					<%
						session.removeAttribute("msg");
					}
					%>
                </div>
                  <form action="AsAVolunteer" name="VolunteerAppForm" method="post" enctype="multipart/form-data" >
                <div class="form-floating form-control-lg">
                  <input type="text" class="form-control" id="floatingInputName" placeholder="Enter Your Name!!" name="name" maxlength="32" minlength="3" required>
                  <label for="floatingInputName">Name</label>
                </div>
                <div class="form-floating form-control-lg">
                  <input type="number" class="form-control" id="floatingInputNumber" placeholder="Enter Your Age!!" min="18" max="100" name="age" required>
                  <label for="floatingInputNumber">Age</label>
                </div>
                <div class="form-floating form-control-lg">
                  <input type="email" class="form-control" id="floatingInputEmail" placeholder="name@example.com" name="email" pattern="[^ @]*@[^ @]*" required>
                  <label for="floatingInputEmail">Email</label>
                </div>  
                <div class="form-floating form-control-lg">
                  <input type="text" class="form-control" id="floatingInputContact" placeholder="Enter Your Contact!!" name="contact" pattern="[789][0-9]{9}" maxlength="10" required>
                  <label for="floatingInputContact">Contact Number</label>
                </div>
                <div class="form-floating form-control-lg">
                  <textarea class="form-control" placeholder="Enter Your Address!!" id="floatingTextareaAddress" name="address" minlength="20" required></textarea>
                  <label for="floatingTextareaAddress">Address</label>
                </div>
                <div class="form-floating form-control-lg">
                  <input type="text" class="form-control" id="floatingInputCity" placeholder="Enter Your City!!" name="city" minlength="3" required> 
                  <label for="floatingInputCity">City</label>
                </div>
                <div class="form-floating form-control-lg">
                  <input type="text" class="form-control" id="floatingInputState" placeholder="Enter Your State!!" name="state" minlength="3" required>
                  <label for="floatingInputState">State</label>
                </div>
                <div class="form-floating form-control-lg">
                  <input type="text" class="form-control" id="floatingInputCountry" placeholder="Enter Your Country!!" name="country" minlength="3" required>
                  <label for="floatingInputCountry">Country</label>
                </div>
                <div class="form-floating form-control-lg">
                  <input type="text" class="form-control" id="floatingInputCode" placeholder="Enter Your Zip Code!!" name="zipCode" pattern="[1-9][0-9]{5}" required>
                  <label for="floatingInputCode">Zip Code</label>
                </div>
                <!-- <div class="form-floating form-control-lg">
                  <input type="text" class="form-control" id="floatingInputOccupation" placeholder="Enter Your Occupation!!" name="occupation">
                  <label for="floatingInputOccupation">Occupation</label>
                </div> -->
                <div class="form-floating form-control-lg">
                  <select class="form-select" id="floatingSelect" name="occupation" required>
                    <option value="" disabled >Select Occupation</option>
                    <option value="Student">Student</option>
                    <option value="Employee">Employee</option>
                  </select>
                  <label for="floatingSelect">Occupation</label>
                </div>
                <label for="formIDproof" class="form-label">Upload ID Proof</label>
                <input class="form-control form-control-lg" id="formIDproof" type="file" name="IDProof" required/>
                <br>
                <input class="btn btn-success" type="submit" value="Submit">
                <input class="btn btn-info" type="reset" value="Reset">
              </form>
              </div>
            </div>

            <!-- footer -->
            <footer>
              <div class="position-sticky">
              <div class="foot">
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="row-1">
                          <div class="col-sm-3">
                              <h4>Contact Us</h4>
                              <br>
                              <div class="last">
                              <ul>
                                  <li><i class="fa-regular map fa-map"></i><span>Infowiz Sector-34<br> Chandigarh</span></li>
                              <li><i class="fa-solid phone fa-phone"></i>
                              <span><a href="#">9856347120</a><br>
                                  </span></li>
                                  <li><i class="fa-regular envelope fa-envelope"></i>
                                  <span><a href="#">aashray@gmail.com</a><br>
                                      </span></li>
                              </ul>
                          </div>
                        </div>
                          <div class="col-sm-3">
                              <h4>Instagram Feed</h4>
              <br>
              <div class="grid-row">
                  <div class="grid-img-1">
                      <div class="project-1">
                             <img src="images/img1.png" alt="">
                          </div>
                          </div>
                  <div class="grid-img-1">
                      <div class="project-1">
                          <img src="images/img2.png" alt="">
                      </div>
                  </div>
                  <div class="grid-img-1">
                      <div class="project-1">
                          <img src="images/img3.jpg" alt="">
                      </div>
                  </div>
                  </div>
                  <div class="grid-row">
                  <div class="grid-img-1">
                      <div class="project-1">
                          <img src="images/img4.jpg" alt="">
                      </div>
                  </div>
                  
                  <div class="grid-img-1">
                      <div class="project-1">
                          <img src="images/img5.jpg" alt="">
                      </div>
                  </div>
                  <div class="grid-img-1">
                      <div class="project-1">
                          <img src="images/img6.jpg" alt="">
                      </div>
                  </div>
                  </div>
                  </div>
                      <div class="col-sm-6">
                          <h4>About Us</h4>
                          <div class="paras">
            <p>A non-governmental organization is any non-profit, voluntary citizens' group, which is organized on a local, national and international level.
             <br> At AASHRAY, we improve the lives of people who are most in need and serve as a beacon of hope by offering a cosy haven. <br>
              The true goal of AASHRAY's founding was to ensure that no parent, grandparent, or child ever feels alone.</p>
                              <div class="pink">
                                <i class="fa-brands fb fa-facebook-f"></i>
                                <i class="fa-brands twit fa-twitter"></i>
                                <i class="fa-brands link fa-linkedin-in"></i>
                                <i class="fa-brands pint fa-pinterest-p"></i>
                                <i class="fa-brands goog fa-google-plus-g"></i>
                              </div>            
                          </div>
                      </div>
                      </div>
                      </div>
                  <div class="grey_line">
                    <div class="p_1">Copyright &copy; 2024. All Rights Reserved.</div>
                  </div>
                  </div>
                  </div>
                  </footer>
</body>
</html>