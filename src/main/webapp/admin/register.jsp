<%@ include file="header.jsp" %>
<%@ include file="ConnectionMaster.jsp" %>

<div class="container">
<h1>Register Here</h1>
<form class="form-vertical" method=post>

<div class="form-group">
<label for="name">Name</label>
<input type="text" class="form-control" name="name" id="nm">
</div>

<div class="form-group">
<label for="ad">Address</label>
<input type="text" class="form-control" name="address" id="ad">
</div>

<div class="form-group">
<label for="con">Contact</label>
<input type="text" class="form-control" name="contact" id="con">
</div>

<div class="form-group">
<label for="edu">Education</label>
<input type="text" class="form-control" name="education" id="edu">
</div>

<div class="form-group">
<label for="email">Email Id</label>
<input type="email" class="form-control" name="email" id="email">
</div>

<div class="form-group">
<label for="pass">Password</label>
<input type="password" class="form-control" name="password" id="pass">
</div>

<button type="submit" name="btnsub" id="btnsub" class="btn btn-primary">Submit</button>
<button type="reset"  class="btn btn-danger">Reset</button>

</form>
</div>
<%@ include file="footer.jsp" %>

<%
if(request.getParameter("btnsub")!=null){
	String nm,ad,con,edu,eml,pass;
	nm=request.getParameter("name");
	ad=request.getParameter("address");
	con=request.getParameter("contact");
	edu=request.getParameter("education");
	eml=request.getParameter("email");
	pass=request.getParameter("password");
	
	try{
		PreparedStatement pst=cn.prepareStatement("insert into register values(?,?,?,?,?,?)");
		pst.setString(1, nm);
		pst.setString(2, ad);
		pst.setString(3, con);
		pst.setString(4, edu);
		pst.setString(5, eml);
		pst.setString(6, pass);

		int ans=pst.executeUpdate();
	if(ans!=0){
		out.println("<script>alert('Registration Successful')</script>");
	}else{
		out.println("<script>alert('Problem Occured')</script>");
	}
	
	}
	catch(Exception ex){
		ex.printStackTrace();
	}
}
%>