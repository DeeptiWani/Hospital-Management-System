<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Newlife</title>
    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
  
    <!-- custom css -->
    <link rel = "stylesheet" href = "main.css">
</head>
<body>
    

    <!-- header -->
    <header class = "header bg-white">
        <nav class = "navbar bg-blue">
        
            <div class = "container flex">
                <a href = "index1.html" class = "navbar-brand">
                    <img src = "../logo/newlife.png" alt = "site logo">
                   
                </a>
                <button type = "button" class = "navbar-show-btn">
                    <img src = "../ham-menu-icon.png">
                </button>

                <div class = "navbar-collapse bg-white">
                    <button type = "button" class = "navbar-hide-btn">
                        <img src = "../home/close-icon.png">
                    </button>
                    <ul class = "navbar-nav">
                        <li class = "nav-item">
                            <a href = "index1.html" class = "nav-link">Home</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "about.html" class = "nav-link">About</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "service.html" class = "nav-link">Service</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "doctor.jsp" class = "nav-link">Doctors</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "departments.html" class = "nav-link">Departments</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "gallery.html" class = "nav-link">Gallery</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "blog.html" class = "nav-link">Blog</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "../admin/login.jsp" class = "btn btn-white">Login</a>
                        </li>
                    </ul>
                    
                </div> 
            </div>
        </nav>
        
        <br><br><br><br><br><br><br>
        
        
        
         <%@ include file="../ConnectionMaster.jsp"%>

<div class="container">
<center><h1>Book Appointment</h1></center>
<%
String did="",n="",p="",s="",q="",i="";
did=request.getParameter("doctorid");

try{
	PreparedStatement pst=cn.prepareStatement("select * from doctors where doctor_id=?");
	pst.setString(1, did);
	ResultSet rs=pst.executeQuery();
	
	if(rs.next()){
		
		n=rs.getString("name");
		p=rs.getString("position");
		s=rs.getString("speciality");
		q=rs.getString("qualification");
		i=rs.getString("image");
		
	}
	
}catch(Exception ex){
	ex.printStackTrace();
}
%>

<img src="../doctors/<%=i %>" width=300 height=700>
<form>
<div class="form-group">
<label for="did">Doctor Id</label>
<input type="text" class="form-control" name="did" id="did" value="<%=did %>" readonly>
</div>

<div class="form-group">
<label for="n">Name</label>
<input type="text" class="form-control" name="name" id="n" value="<%=n %>" readonly>
</div>

<div class="form-group">
<label for="p">Position</label>
<input type="text" class="form-control" name="position" id="p" value="<%=p %>" readonly>
</div>

<div class="form-group">
<label for="s">Speciality</label>
<input type="text" class="form-control" name="speciality" id="s" value="<%=s %>" readonly>
</div>

<div class="form-group">
<label for="q">Qualification</label>
<input type="text" class="form-control" name="qualification" id="q" value="<%=q %>" readonly>
</div>

<div class="form-group">
<label for="fn">Patient's Full Name</label>
<input type="text" class="form-control" name="patientname" id="fn">
</div>

<div class="form-group">
<label for="a">Address</label>
<input type="text" class="form-control" name="address" id="a" >
</div>

<div class="form-group">
<label for="pn">Phone No</label>
<input type="text" class="form-control" name="phoneno" id="pn"  >
</div>

<div class="form-group">
<label for="em">Email Address</label>
<input type="text" class="form-control" name="email" id="em"  >
</div>

<div class="form-group">
<label for="date">Date</label>
<input type="date" class="form-control" name="date" id="date"  >
</div>

<div class="form-group">
<label for="time">Time</label>
<input type="time" class="form-control" name="time" id="time"  >
</div>


<button type="submit" name="butsub" id="butsub" class="btn btn-primary">Submit</button>
<button type="reset"  class="btn btn-danger">Reset</button>
</form>
</div>
</div>






<%
if(request.getParameter("butsub")!=null){
	String id,nm,sp,dt,tm;
	
	did=request.getParameter("did");
	nm=request.getParameter("name");
	sp=request.getParameter("speciality");
	dt=request.getParameter("date");
	tm=request.getParameter("time");
	
	try{
		
	PreparedStatement pst=cn.prepareStatement("insert into your_appointment values(?,?,?,?,?)");
	pst.setString(1, did);
	pst.setString(2, nm);
	pst.setString(3, sp);
	pst.setString(4,dt);
	pst.setString(5,tm);
	
	int ans=pst.executeUpdate();
	if(ans!=0){
		out.println("<script>alert('Appointment Booked Successfully');window.location='yourappointment.jsp'</script>");
	}
	else{
		out.println("<script>alert('Problem Occured')</script>");
	}
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
}
%>


   <br><br><br><br><br><br>
    </main>

    <footer id = "footer" class = "footer text-center">
        <div class = "container">
            <div class = "footer-inner text-white py grid">
                <div class = "footer-item">
                    <h3 class = "footer-head">about us</h3>
                    <div class = "icon">
                        <img src = "../logo/newlife.png">
                    </div>
                    <p class = "text text-md">Our vision is to be a full-service hospital, operating independently and serving the end-to-end healthcare needs of patients, right from diagnostics to surgery and rehabilitation.</p>
                    <address>
                        Newlife Hospitals <br>
                      7978 Herzog Walks <br>
                      New York
                    </address>
                </div>

                <div class = "footer-item">
                    <h3 class = "footer-head">tags</h3>
                    <ul class = "tags-list flex">
                        <li>medical care</li>
                        <li>emergency</li>
                        <li>therapy</li>
                        <li>surgery</li>
                        <li>medication</li>
                        <li>nurse</li>
                    </ul>
                </div>

                <div class = "footer-item">
                    <h3 class = "footer-head">Quick Links</h3>
                    <ul>
                        <li><a href = "#" class = "text-white">Our Services</a></li>
                        <li><a href = "#" class = "text-white">Our Plan</a></li>
                        <li><a href = "#" class = "text-white">Privacy Policy</a></li>
                        <li><a href = "#" class = "text-white">Appointment Schedule</a></li>
                    </ul>
                </div>

                <div class = "footer-item">
                    <h3 class = "footer-head">make an appointment</h3>

                    <ul class = "appointment-info">
                        <li>8:00 AM - 11:00 AM</li>
                        <li>2:00 PM - 05:00 PM</li>
                        <li>8:00 PM - 11:00 PM</li>
                        <li>
                            <i class = "fas fa-envelope"></i>
                            <span>newlife@gmail.com</span>
                        </li>
                        <li>
                            <i class = "fas fa-phone"></i>
                            <span>+002 567 1234(00)</span>
                        </li>
                    </ul>
                </div>
            </div>

            <div class = "footer-links">
                <ul class = "flex">
                    <li><a href = "#" class = "text-white flex"> <i class = "fab fa-facebook-f"></i></a></li>
                    <li><a href = "#" class = "text-white flex"> <i class = "fab fa-twitter"></i></a></li>
                    <li><a href = "#" class = "text-white flex"> <i class = "fab fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </footer>
    <!-- end of footer  -->
</body>
</html>
  
