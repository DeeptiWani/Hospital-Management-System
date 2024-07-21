<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="style1.css">

	<title>Doctor's Dashboard | Newlife</title>
</head>
<body>


	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<img src="../logo/newlife.png" width="200" height="100">
			
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="#">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			
			<li>
				<a href="appointment.jsp">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='bx bxs-calendar-plus'></i>
					<span class="text">Appointments</span>
				</a>
			</li>
			
			
			<li>
		    	<a href="mdoctor.jsp">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='bx bx-plus-medical'></i>
					<span class="text">Manage Doctors</span>
				</a>
			</li>
			
			
			<li>
				<a href="profile.jsp">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='bx bx-user'></i>
					<span class="text">Profile</span>
				</a>
			</li>
			
		</ul>
		<ul class="side-menu">
			
			<li>
				<a href="logout.jsp" class="logout">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
		
			<form action="#">
				<div class="form-input">
				<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			
			<a href="#" class="profile">
				<img src="../doctors/d12.jpg">
			</a>
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
				
					<h1>Dr.George A.Beller</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Home</a>
						</li>
					</ul>
				</div>
				
			</div>

			<ul class="box-info">
				<li>
					<i class='bx bxs-calendar-check' ></i>
					<span class="text">
						<h3>2020</h3>
						<p>Total Patient</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-group' ></i>
					<span class="text">
						<h3>58</h3>
						<p>Today Patient</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-calendar-plus'></i>
					<span class="text">
						<h3>63</h3>
						<p>Today Appointments</p>
					</span>
				</li>
			</ul>


			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Upcoming Appointments</h3>
						
					</div>
					<table>
						<thead>
							<tr>
								<th>Patients</th>
								<th>Date </th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									
									<p>Kris Dorson</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status process">Process</span></td>
							</tr>
							<tr>
								<td>
									
									<p>Leon Kennedy</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									
									<p>John Doe</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									
									<p>Rosy Mark</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									
									<p>Dasiy Morgan</p>
								</td>
								<td>01-10-2021</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="todo">
					<div class="head">
						<h3>Recent Appointments</h3>
						
					</div>
					<ul class="todo-list">
						<li class="completed">
							<p>Rayn Gold</p>
							
						</li>
						<li class="completed">
							<p>Mark John</p>
							
						</li>
						<li class="completed">
							<p>Mary Mathews</p>
							
						</li>
						<li class="completed">
							<p>Charlie Doe</p>
							
						</li>
						<li class="completed">
							<p>John Doe</p>
							
						</li>
					</ul>
				</div>
				<div class="container">
        <div class =row>
        
        <div class="bar-graph">
        
             <div class="bar" data-doctors="15">Cardiology</div>
            <div class="bar" data-doctors="10">Dermatology</div>
            <div class="bar" data-doctors="8">Neurology</div>
            <div class="bar" data-doctors="12">Orthopedics</div>
            <div class="bar" data-doctors="20">Pediatrics</div>
            <div class="bar" data-doctors="15">Cardiology</div>
            <div class="bar" data-doctors="10">Dermatology</div>
            <div class="bar" data-doctors="8">Neurology</div>
            <div class="bar" data-doctors="12">Orthopedics</div>
            <div class="bar" data-doctors="20">Pediatrics</div>
        </div>
    </div>
			</div>	
				
				 <table class="calendar">
        <thead>
            <tr>
                <th colspan="7"><p style="color:#3C91E6;">September 2023</th></p>
            </tr>
            <tr>
                <th><p style="color:#3C91E6;">Sun</p></th>
                <th><p style="color:#3C91E6;">Mon</p></th>
                <th><p style="color:#3C91E6;">Tue</p></th>
                <th><p style="color:#3C91E6;">Wed</p></th>
                <th><p style="color:#3C91E6;">Thu</p></th>
                <th><p style="color:#3C91E6;">Fri</p></th>
                <th><p style="color:#3C91E6;">Sat</p></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td></td>
                <td></td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
            </tr>
            <tr>
                <td>6</td>
                <td>7</td>
                <td>8</td>
                <td>9</td>
                <td>10</td>
                <td>11</td>
                <td>12</td>
            </tr>
            <tr>
                <td>13</td>
                <td>14</td>
                <td>15</td>
                <td>16</td>
                <td>17</td>
                <td>18</td>
                <td>19</td>
            </tr>
            <tr>
                <td>20</td>
                <td>21</td>
                <td>22</td>
                <td>23</td>
                <td>24</td>
                <td>25</td>
                <td>26</td>
            </tr>
            <tr>
                <td>27</td>
                <td>28</td>
                <td>29</td>
                <td>30</td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
    </table>
		
		
		<div class=dchart>
		<img src="../home/dchart.png" width="500" heigth="330">
		</div>
		</main>
		
</section>
</body>
</html>


