<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FAQ-Aashray</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/lightbox.min.css">
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
      
      <div class="faq">
        <div class="container">
        <h1>Frequently Asked Questions</h1>
        <div id="accordion">

            <div class="card">
              <div class="card-header">
                <a class="btn" data-bs-toggle="collapse" href="#collapseOne">
                    What is AASHRAY (NGO)??
                </a>
              </div>
              <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
                <div class="card-body">
                    A non-governmental organization (NGO) is basically a legally constituted organization which is operated by legal persons who work as independent team with the help of donation.
                </div>
              </div>
            </div>
          
            <div class="card">
              <div class="card-header">
                <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseTwo">
                    Is there any fee for membership of the AASHRAY??
                </a>
              </div>
              <div id="collapseTwo" class="collapse" data-bs-parent="#accordion">
                <div class="card-body">
                    There is no membership fee to join the AASHRAY.
                </div>
              </div>
            </div>

            <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseFour">
                    How can I contribute to this organization?
                  </a>
                </div>
                <div id="collapseFour" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    You can contribute by making general donation, by convincing your friends, company or other companies to provide corporate funding to Aashray. You can join us and provide voluntary services and there is no specific amount that should be donated. However all the programs have a detailed breakup of the expenditure.
                  </div>
                </div>
              </div>
              
              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseFive">
                    What will Aashray do with my Donation?
                  </a>
                </div>
                <div id="collapseFive" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    We ensure that contribution made by people is used in the best possible manner. We use people’s donations in providing stationery, mid-day meals and books to children. We also use these donations in extending our support to more children by increasing the number of enrollments. Aashray runs various programs to work with children in difficult circumstances. These programs essentially focus on education, health care, nutrition and shelter. We also enroll children in child media programs and ensure their participation in the innovative programs to empower them so that they can voice their opinions.
                  </div>
                </div>
              </div>

              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseSix">
                    Is the website safe to make online payments?
                  </a>
                </div>
                <div id="collapseSix" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    Yes, the website is safe for any kind of transaction. Also any information exchange is kept safe and in no condition gets disclosed. Also the payment gateway is a third party payment gateway recognized by the financial institutions under the government of India. So any transaction also is thoroughly secured.
                  </div>
                </div>
              </div>
              
              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseSeven">
                    Do you accept donations in form of books/ gadgets / furniture?
                  </a>
                </div>
                <div id="collapseSeven" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    Yes, We do accept donations in kinds like books, computers and food supplies.
                  </div>
                </div>
              </div>
            
              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseEight">
                    I have already filled the form. I have not received any invitation yet.
                  </a>
                </div>
                <div id="collapseEight" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    If your form is rejected for reasons like – underage/outstation applicant/CoI – you should have received an email. If there is no email, your form is under processing and you shall receive the invite only when the next lot/batch is ready for induction. This may take 2-3 weeks.
                  </div>
                </div>
              </div>

              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseNine">
                    I can contribute only on weekends, as I am working/studying and hence busy on weekdays. Can I still join as a member?
                  </a>
                </div>
                <div id="collapseNine" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    Yes. Almost all the events/meetings are scheduled on weekends only. Once in a span of 1-2 months. Besides that, there are a regular set of activities that keep occurring in which you can participate at any given time, whenever you are free.
                  </div>
                </div>
              </div>              

              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseTen">
                    How much time do I have to give to the AASHRAY?
                  </a>
                </div>
                <div id="collapseTen" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    AASHRAY is completely a voluntary NGO. You devote time only as much as you can. However, you are expected to be productive as a member. Not only by your physical presence at the event, you can always take part in the making of the event. You can always workforthe event and not at the event alone.
                  </div>
                </div>
              </div>

              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseEleven">
                    What is Aashray's Mission?
                  </a>
                </div>
                <div id="collapseEleven" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    Our mission is to educate, empower and enable every individual who wishes to make a positive difference in the life of the underprivileged child and women.
                  </div>
                </div>
              </div>

              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseTwelve">
                    What is Aashray's Vision?
                  </a>
                </div>
                <div id="collapseTwelve" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    Our vision is to ensure that every underprivileged child or women attains his or her right to education, health and opportunity.
                  </div>
                </div>
              </div>

              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseThirteen">
                    Does AASHRAY staff get paid?
                  </a>
                </div>
                <div id="collapseThirteen" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    No. All directors and staff members are volunteers. Despite our heavy academic and professional commitments, we donate our time and energy because we strongly believe that together we can make a real difference to improve the life of children and women.
                  </div>
                </div>
              </div>

              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseFourteen">
                    Where can I find more information about AASHRAY?
                  </a>
                </div>
                <div id="collapseFourteen" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    Please take some time to browse this website and do not hesitate to contact us if you still have questions.
                    You can find more information about AASHRAY from <a href="index.html">here</a>.
                  </div>
                </div>
              </div>

              <div class="card">
                <div class="card-header">
                  <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseFifteen">
                    How can I contact AASHRAY if I have questions?
                  </a>
                </div>
                <div id="collapseFifteen" class="collapse" data-bs-parent="#accordion">
                  <div class="card-body">
                    You may get our contact information from <a href="getInTouch.html">here</a>.
                  </div>
                </div>
              </div>

          </div>
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