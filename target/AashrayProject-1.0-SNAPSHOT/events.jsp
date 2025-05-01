<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<title>Events-Aashray</title>
<link rel="stylesheet" href="style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="modal.css">
</head>
<body>
	<div id="navv">
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark navbar-sticky-top">
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
        
        <div class="head_text_1">
    <h1><b><i>EVENTS</i></b></h1>
</div>
    <div class="medium">
        <div class="row">
          <div class="col-sm-6">
          <div class="move-me box_content"> 
            The Aashray (NGO), with unwavering dedication, tirelessly engages in distributing clothes to those in need, <br> embodying the spirit of compassion and solidarity. Through meticulous planning and collaboration, <br> we ensure that each garment finds its rightful place, warming the hearts and bodies of the less fortunate. <br> Whether it's sheltering the homeless from biting cold or providing attire for job interviews, <br> every piece of clothing serves as a beacon of hope, restoring dignity and fostering a sense of belonging within the community. <br> With every distribution drive, the Aashray (NGO) not only meets a basic necessity but also uplifts spirits and instills a sense of optimism for a brighter tomorrow. <br> Through our noble efforts,we weave a tapestry of empathy and kindness, transforming lives one garment at a time. 
      </div>
        </div>
          <div class="col-sm-6">
            <div class="move-me-1 circular">
              <img src="images/event-1.jpg" alt="">
            </div>
          </div>
        </div>
      </div>
      <hr class="dotted">
      <div class="med_video">
        <div class="row">
            <div class="col-sm-6">
            <div class="box_content_1"> 
              The Aashray's (NGO) commitment to alleviating hunger resonates profoundly in their tireless efforts to distribute food to those in need. <br> With efficiency and compassion at the forefront, they orchestrate distribution initiatives that reach the most vulnerable segments of <br> society. From bustling urban centers to remote rural communities, no one is left behind in their mission to combat food insecurity. <br> Each distribution event is a testament to their dedication, as volunteers work tirelessly to ensure that nutritious meals find their way to hungry stomachs. <br> Beyond simply providing sustenance, these acts of generosity serve as a lifeline for countless individuals and families, offering a glimmer of hope in times of hardship. Through their unwavering determination, <br> the Aashray (NGO) not only nourishes bodies but also nurtures the spirit of solidarity and empathy within communities, forging a brighter future for all.
          </div>
        </div>
            <div class="col-sm-6">
              <iframe width="560" height="300" src="https://www.youtube.com/embed/QHKT1Zh96l8?si=3YwU0h4vVSOAkYSU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        </div>
      </div>
      <hr class="dotted">
      <div class="medium">
        <div class="row">
          <div class="col-sm-6">
          <div class="move-me box_content"> 
            The Aashray (NGO) stands as a beacon of hope, extending vital medical assistance to the most vulnerable members of society with unwavering compassion. <br> Through their dedicated efforts, they provide a lifeline to those in need, offering crucial healthcare services <br> regardless of socioeconomic status. From basic medical check-ups to life-saving treatments, their team of skilled professionals work tirelessly to ensure <br> that no one is deprived of essential healthcare. Whether it's administering vaccinations to children, conducting health awareness <br> campaigns, or providing treatment for chronic illnesses, their commitment to improving the well-being of communities knows no bounds. Each interaction with the Aashray(NGO) brings not just relief from suffering, <br> but also a renewed sense of dignity and empowerment to those they serve. In their tireless pursuit of ensuring access to medical care for all, the NGO embodies the profound impact of compassion and solidarity in transforming lives for the better.
      </div>
      </div>
          <div class="col-sm-6">
            <div class="move-me-1 circular">
              <img src="images/circle.png" alt="">
            </div>
          </div>
        </div>
    </div>
        <hr class="dotted">
                <div class="med_video">
                    <div class="row">
                        <div class="col-sm-6">
                        <div class="box_content_1"> 
                          The Aashray(NGO) epitomizes the essence of humanitarianism by extending a helping hand to the needy through the provision of essential <br> necessities. Their efforts transcend mere charity, as they tirelessly work to address the fundamental needs of communities facing hardship. From distributing blankets to shelter the homeless from <br> biting cold to supplying hygiene kits to promote health and well-being, every initiative is a testament to their unwavering commitment to improving lives. <br> Whether it's providing food packages to alleviate hunger, offering clothing to clothe the naked, or distributing educational supplies to empower the youth, the Aashray's(NGO) impact reverberates far beyond material aid. Through their compassion <br> and dedication, they instill hope and dignity in those they serve, reaffirming the belief in the transformative power of empathy and solidarity.
                      </div>
                    </div>
                        <div class="col-sm-6">
                          <iframe width="560" height="300" src="https://www.youtube.com/embed/Xaezycx8OK4?si=G-2HVXPrhOV2IDz1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    </div>
                  </div>
            </div>
        </div>
      </div>
      <hr class="dotted">
      <div class="medium">
        <div class="row">
          <div class="col-sm-6">
          <div class="move-me box_content"> 
            The Aashray (NGO) embraces the joy of childhood by organizing vibrant games and events tailored to uplift the spirits of children <br> from diverse backgrounds. With meticulous planning and boundless enthusiasm, they create safe and inclusive spaces <br> where laughter and camaraderie flourish. From energetic outdoor sports to creative indoor activities, every event is thoughtfully curated <br> to nurture not just physical well-being but also social and emotional growth. Through these games, children develop essential life skills such as teamwork, <br> resilience, and fair play, laying the foundation for a brighter future. Beyond mere recreation, these events foster a sense of belonging and empowerment, <br> instilling confidence and self-esteem in every participant. With each game organized, the Aashray (NGO) champions the right of every child to play, <br> ensuring that joy knows no bounds and that memories created are ones of happiness and camaraderie.
      </div>
        </div>
          <div class="col-sm-6">
            <div class="move-me-1 circular">
              <img src="images/event-2.jpg" alt="">
            </div>
          </div>
        </div>
      </div>


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