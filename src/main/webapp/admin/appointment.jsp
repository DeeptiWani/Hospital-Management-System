<%@ include file="header.jsp"%>
<%@include file="ConnectionMaster.jsp" %>
<div class="container">
 <h1 align=center>Appointments</h1> 
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
  


