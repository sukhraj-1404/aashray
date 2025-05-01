<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
<title>Home</title>
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="modal.css">

    <!--Start of Tawk.to Script-->
<script type="text/javascript">
  var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
  (function(){
  var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
  s1.async=true;
  s1.src='https://embed.tawk.to/661904afa0c6737bd12b04a7/1hr8rkjqp';
  s1.charset='UTF-8';
  s1.setAttribute('crossorigin','*');
  s0.parentNode.insertBefore(s1,s0);
  })();
  </script>
  <!--End of Tawk.to Script-->
  
</head>
<body>

<!-- Header -->
<header>
        <div class="row">
        <div class="col-sm-9">
            <div class="row">
                <div class="col-sm-3">
                    <img src="images/logo.png" alt="logo" class="img-responsive">    
                </div>
                <div class="col-sm-9">
                    <div class="head_text">
                        <h1><b><i>Aashray : A Heaven for Vulnerable Hearts</i></b></h1>
                    </div>
                </div>
              </div>
        </div>
        <div class="col-sm-3">
        <div class="right_part">
            <span class="glyphicon glyphicon-envelope text">
            aashray@gmail.com
            </span><br>
            <span class="glyphicon glyphicon-earphone text">
                9856347120
            </span>
           <div class="icons">
            <i class="fa-brands fa-facebook-f"></i>&nbsp;&nbsp;
            <i class="fa-brands fa-twitter"></i>&nbsp;&nbsp;
            <i class="fa-brands fa-linkedin"></i>&nbsp;&nbsp;
            <i class="fa-brands fa-pinterest-p"></i>&nbsp;&nbsp;
            <i class="fa-brands fa-google-plus-g"></i>
           </div>
            </div>
        </div>
      </div>
  </header>
  
  <!-- Navbar -->
  <div id="navv">
  <nav class="navbar navbar-expand-sm navbar-dark bg-dark navbar-sticky-top">
      <div class="container-fluid">
        <div class="collapse navbar-collapse" id="mynavbar">
          <ul class="navbar-nav me-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.html">Home</a>
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
              <a class="nav-link dropdown-toggle" href="index.html" data-bs-toggle="dropdown">Start A Chapter</a>
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
  </div>
  
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
  
  <!-- Carousel -->
  <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active" data-bs-interval="2000">
          <img src="images/carousel1.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
           <div class="car-par">"We make a living by what we get, but we make a life by what we give."</div>
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="images/bg_img1.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <div class="car-par">"The best way to find yourself is to lose yourself in the service of others."</div>
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="images/img15.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <div class="car-par">"Alone, we can do so little; together, we can do so much."</div>
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="images/carousel4.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <div class="car-par">"Act as if what you do makes a difference. It does."</div>
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="images/carousel5.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <div class="car-par">"The meaning of life is to find your gift. The purpose of life is to give it away."</div>
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="images/carousel6.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <div class="car-par">"We cannot live only for ourselves. A thousand fibers connect us with our fellow men."</div>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

<!-- Who We Are?? -->
<h1 id="Who_we_are">Who We Are??</h1>
    <div class="row">
      <div class="col-sm-8">
        <div class="ourOrganization">
        <h2>Our Organization</h2>
        <p>
          Childhood is frequently linked to happiness, love, and learning. But in the face of harsh reality, this hope may disappear for neglected grandparents, orphans, and even parents who have lost contact with their kids.
        </p>
        <p>
          At AASHRAY, we improve the lives of people who are most in need and serve as a beacon of hope by offering a cosy haven.
        </p>
        <p>
          We give kids the nourishing food, cosy clothing, and excellent education they require to reach their full potential.Our commitment extends beyond childhood. We provide elderly grandparents who are frequently left alone dignified accommodation and supportive services because we recognize their vulnerability.
        </p>
        <p>
          We are a family, where love guides us all as we grow and expand year after year. Not just a regular children’s home, we are a nearly self-sustaining organization; a working farm, a vibrant school, receiving no government assistance of any kind. Take a look around and if you have any questions just "Get In Touch" with us via the menu above!
        </p>
        <p>
         Click <a href="mission&vision.jsp">here</a> for Additional Information.
        </p>
      </div>
      </div>
      
      <div class="col-sm-4">
        <div class="flip-card">
          <div class="flip-card-inner">
            <div class="flip-card-front">
              <div class="card">
                <img src="images/logo.png" alt="Front-Image" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">Donate Donate!!</h5>
                  <p class="card-text">Help Us to keep making these kids lives special by Donating Online!!</p>
                </div>
              </div>
            </div>
            <div class="flip-card-back">
              <div class="card">
                <img src="images/QR-Code.png" alt="Back-Image" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">Donate Donate!!</h5>
                  <div class="card-text">Be A Part Of The FAMILY!!</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Our Impact -->

      <div class="main">
        <div class="row">
        <div class="col-sm-12">
      <div id="counter">
        <div class="counter-section">
          <h3>OUR IMPACT</h3>
          <div class="rows">
            <div class="part">
              <div class="spinner-border text-danger" role="status">
                <span class="sr-only">Loading...</span>
              </div>
              <h2>
                <span id="count1"></span>
              </h2>
              <p class="blue">
               "Children and their families are impacted every year"
              </p>
            </div>
            
            <div class="part">
              <div class="spinner-border text-danger" role="status">
                <span class="sr-only">Loading...</span>
              </div>
              <h2>
                <span id="count2"></span>
              </h2>
              <p class="blue">
               "Villages and slums are reached out to across the country"
              </p>
            </div>
      
            <div class="part">
              <div class="spinner-border text-danger" role="status">
                <span class="sr-only">Loading...</span>
              </div>
              <h2>
                <span id="count3"></span>
              </h2>
              <p class="blue">
                "Projects focused on education , health care and women empowerment"
              </p>
            </div>
      
            <div class="part">
              <div class="spinner-border text-danger" role="status">
                <span class="sr-only">Loading...</span>
              </div>
              <h2>
                <span id="count4"></span>
              </h2>
              <p class="blue">
                "States are reached including the remotest areas"
              </p>
            </div>
      
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
<script src="counter.js"></script>
</body>
</html>
  
</body>
</html>