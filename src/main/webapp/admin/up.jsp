<%@include file="header.jsp" %> 
<%@include file="ConnectionMaster.jsp"%>
<%
String did = request.getParameter("doctorid");
session.setAttribute("did", did); 
String n="",p="",s="",q="",h="",i="";
PreparedStatement pst = cn.prepareStatement("select * from doctors where doctor_id=?"); 
pst.setString(1, did); 
ResultSet rs = pst.executeQuery();
if (rs.next()) {
	
    n=rs.getString("name");
    p=rs.getString("position");	
	s=rs.getString("speciality");
	q=rs.getString("qualification");
	h=rs.getString("hospital");
	i=rs.getString("image");
}
%>

<div class="container">
    <h1>Upload Doctor details Here</h1>
    <form action="upload1.jsp" method="post" enctype="multipart/form-data">
        <img src="../doctors/<%=i %>" width="100" height="100"><br>
        Select an image to change: <br />
        <input type="file" name="file" size="50" />
        <br />
        <input type="submit" value="Upload" />
    </form>
    
    <form method="post" class="form-vertical"> 
        <div class="form-group">
            <label for="id">Doctor Id</label>
            <input type="text" class="form-control" name="doctorid" id="doctorid" value="<%=did %>">
        </div>

        <div class="form-group"> 
            <label for="nm">Name</label>
            <input type="text" class="form-control" name="name" id="nm" value="<%=n%>">
        </div>

        <div class="form-group">
            <label for="ps">Position</label> 
            <input type="text" class="form-control" name="position" id="ps" value="<%=p %>">
        </div>

        <div class="form-group">
            <label for="spec">Speciality</label> 
            <input type="text" class="form-control" name="speciality" id="spec" value="<%=s %>">
        </div>
        
        <div class="form-group">
            <label for="quali">Qualification</label> 
            <input type="text" class="form-control" name="qualification" id="quali" value="<%=q %>">
        </div>
        
        <div class="form-group">
            <label for="hosp">Hospital</label> 
            <input type="text" class="form-control" name="hospital" id="hosp" value="<%=h %>">
        </div>

        <button type="submit" name="butsub" id="butsub" class="btn btn-primary">Submit</button>
        <button type="reset" class="btn btn-danger">Reset</button>
    </form>
</div>

<%@include file="footer.jsp" %>

<%
if (request.getParameter("butsub") != null) { 
    String doctorid, nm, ps, spec, quali, hosp, im; 
    doctorid = request.getParameter("doctorid");
    nm = request.getParameter("name"); 
    ps = request.getParameter("position"); 
    spec = request.getParameter("speciality");
    quali = request.getParameter("qualification");
    hosp = request.getParameter("hospital");
    im = (String) session.getAttribute("filepath"); 
    if (im == null) {
        im = i;
    }
    
    PreparedStatement pst3 = cn.prepareStatement("update doctors set name=?, position=?, speciality=?, qualification=?, hospital=?, image=? where doctor_id=?");
    pst3.setString(1, nm);
    pst3.setString(2, ps);
    pst3.setString(3, spec);
    pst3.setString(4, quali);
    pst3.setString(5, hosp);
    pst3.setString(6, im);
    pst3.setString(7, doctorid);

    int ans = pst3.executeUpdate(); 
    if (ans != 0) {
        out.println("<script>alert('Data saved successfully')</script>");
    } else {
        out.println("<script>alert('Error Occurred')</script>");
    }
}
%>
