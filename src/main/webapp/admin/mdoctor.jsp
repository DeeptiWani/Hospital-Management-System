<%@ page import="java.io.*, java.util.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*, org.apache.commons.io.output.*" %>
<%@include file="ConnectionMaster.jsp"%> 
<%@include file="header.jsp" %>
<div class="container">
    <h1>Upload Doctor details Here</h1>
    Select an image to upload: <br />
    <form action="upload.jsp" method="post" enctype="multipart/form-data"> 
        <input type="file" name="file" size="50" />
        <br />
        <input type="submit" value="Upload" />
    </form>

    <form method="post" class="form-vertical">
        <!-- Your form fields for doctor details -->
        <div class="form-group">
            <label for="id">Doctor Id </label>
            <input type="text" class="form-control" name="doctorid" id="doctorid">
        </div>
        <!-- More form fields for other details -->

        <button type="submit" name="btnsub" class="btn btn-default">Submit</button>
        <button type="reset" class="btn btn-default">Reset</button>
    </form>

    <h1 align="center">Our Doctors</h1> 
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Actions</th>
                <th>Doctor_Id</th>
                <th>Name</th>
                <th>Position</th>
                <th>Speciality</th>
                <th>Qualification</th>
                <th>Hospital</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
            <% 
            try {
                PreparedStatement pst = cn.prepareStatement("select * from doctors");
                ResultSet rs = pst.executeQuery();
                String did="", n="", p="", s="", q="", h="", i="";
                while(rs.next()) {
                    did = rs.getString("doctor_id");
                    n = rs.getString("name");
                    p = rs.getString("position"); 
                    s = rs.getString("speciality");
                    q = rs.getString("qualification");
                    h = rs.getString("hospital");
                    i = rs.getString("image");
            %>
            <tr>
                <td>
                    <a href='del.jsp?doctorid=<%=did %>' class="btn btn-danger btn-xs">Delete</a>
                    <a href='up.jsp?doctorid=<%=did %>' class="btn btn-info btn-xs">Update</a>
                </td>
                <td><%=did %></td>
                <td><%=n %></td>
                <td><%=p %></td>
                <td><%=s %></td>
                <td><%=q %></td>
                <td><%=h %></td>
                <td><img src="../doctors/<%=i %>" width="100" height="100"></td>
            </tr>
            <% 
                }
            } catch(Exception ex) {
                ex.printStackTrace();
            }
            %>
        </tbody>
    </table>
</div>
<%@include file="footer.jsp" %>

<%
if (request.getParameter("btnsub") != null) {
    String doctorid, nm, ps, spec, quali, hosp, im;
    doctorid = request.getParameter("doctorid");
    nm = request.getParameter("name"); 
    ps = request.getParameter("position"); 
    spec = request.getParameter("speciality");
    quali = request.getParameter("qualification");
    hosp = request.getParameter("hospital");
    im = (String) session.getAttribute("filepath"); 

    PreparedStatement pst2 = cn.prepareStatement("insert into doctors values(?,?,?,?,?,?,?)");

    pst2.setString(1, doctorid);
    pst2.setString(2, nm);
    pst2.setString(3, ps);
    pst2.setString(4, spec);
    pst2.setString(5, quali);
    pst2.setString(6, hosp);
    pst2.setString(7, im);

    int ans = pst2.executeUpdate();
    if (ans != 0) {
        out.println("<script>alert('Data saved successfully')</script>");
    } else {
        out.println("<script>alert('Error Occurred')</script>");
    }
}
%>
