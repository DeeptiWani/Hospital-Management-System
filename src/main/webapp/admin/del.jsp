<%@include file="ConnectionMaster.jsp"%>
<% 
try
 {
 String did=request.getParameter("doctorid");
 PreparedStatement pst=cn.prepareStatement("delete from doctors where doctor_id=?");
pst.setString(1, did);
pst.executeUpdate();

out.println("<script>alert('Record deleted');window.location='mdoctor.jsp'</script>");
 }
 catch (Exception ex)
 {
 ex.printStackTrace();
}
 %>