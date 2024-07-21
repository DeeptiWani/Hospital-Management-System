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
                <a href = "index.html" class = "navbar-brand">
                    <img src = "../logo/newlife.png" alt = "site logo">
                </a>
                <button type = "button" class = "navbar-show-btn">
                    <img src = "../home/ham-menu-icon.png">
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
                            <a href = "doctors.html" class = "nav-link">Doctors</a>
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
                            <a href = "appointment.html" class = "nav-link"> Appointment</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "login.jsp" class = "btn btn-white">Login</a>
                        </li>
                    </ul>
                    
                </div> 
            </div>
        </nav>

        
       <%@ include file="ConnectionMaster.jsp" %>



<div class="container">
<h1 align=center style="color:black">Doctors</h1>
<div class="row">
<%
PreparedStatement pst=cn.prepareStatement("select * from doctors");
ResultSet rs=pst.executeQuery();
String did,n,p,s,q,h,i;
int cnt=0;
while(rs.next()){
	
    cnt++;
    did=rs.getString("doctor_id");
    n=rs.getString("name");
	p=rs.getString("position");
	s=rs.getString("speciality");
	q=rs.getString("qualification");
	h=rs.getString("hospital");
	i=rs.getString("image");
%>

<div class="col-md-4">
<div class="thumbnail">
<a href="doctors/<%=i%>" target="_blank">
<img src="doctors/<%=i %>" class="img-responsive">
<div class="caption">
    Name: <%=n %><br>
	Position: <big><%=p %></big><br>
	Speciality: <big><%=s %></big><br>
	Qualification: <big><%=q %></big><br>
	Hospital: <big><%=h %></big><br>
	
</div>
</a>
</div>
</div>

<%
if(cnt==3){
	out.println("</div> <div class=row>");
	cnt=0;
	
}
}
%>
</div>