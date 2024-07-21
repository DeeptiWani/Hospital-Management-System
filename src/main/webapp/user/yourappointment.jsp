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
                            <a href = "../admin/login.jsp" class = "btn btn-white">Login</a>
                        </li>
                    </ul>
                    
                </div> 
            </div>
        </nav>
        
        <br><br><br><br><br><br><br>
        
        
        
<%@include file="../ConnectionMaster.jsp" %>
<div class="container">
 <h1 align=center>Your Appointment</h1> 
 <table class="table table-bordered">
   <thead>
<tr>
 <th>Doctor Id</th>
 <th>Name</th> 
 <th>Specialist</th> 
 <th>Date</th>
  <th>Time</th>

</tr>
</thead>
 <tbody>

<%

try
{
String did="",n="", s="", date="",time="";


PreparedStatement pst=cn.prepareStatement("select * from your_appointment");


ResultSet rs=pst.executeQuery();
while(rs.next())
{
did=rs.getString("doctor_id");
n=rs.getString("name");
s=rs.getString("speciality");
date=rs.getString("date");
time=rs.getString("time");

%>

<tr>
<td><%=did %></td>
<td><%=n %></td>
<td><%=s %></td>
<td><%=date %></td>
<td><%=time %></td>

</tr>
<%

}
}
catch(Exception ex)
{
	ex.printStackTrace();
}
%>

</div>
</tbody>
</table>


</body>
</html>
  


