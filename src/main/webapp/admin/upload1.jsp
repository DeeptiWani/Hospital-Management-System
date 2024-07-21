<%@ page import="java.io.*, java.util.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*, org.apache.commons.io.output.*" %>

<%
String filePath ="C:\\Users\\Dell\\eclipse-workspace\\HospitalManagementSystem\\src\\main\\webapp\\doctors\\";

File file;

int maxFileSize = 5000 * 1024; 
int maxMemSize = 5000 * 1024;

String contentType = request.getContentType(); 
if (contentType != null && contentType.indexOf("multipart/form-data") >= 0) {
    DiskFileItemFactory factory = new DiskFileItemFactory(); 
    factory.setSizeThreshold(maxMemSize); 
    factory.setRepository(new File(filePath));

    ServletFileUpload upload = new ServletFileUpload(factory); 
    upload.setSizeMax(maxFileSize);

    try {
        List<FileItem> fileItems = upload.parseRequest(request);
        Iterator<FileItem> i = fileItems.iterator();

        out.println("<html>");
        out.println("<head>");
        out.println("<title>JSP File Upload</title>");
        out.println("</head>");
        out.println("<body>");

        while (i.hasNext()) {
            FileItem fi = i.next(); 
            if (!fi.isFormField()) {
                String fieldName = fi.getFieldName();
                String fileName = fi.getName();
                boolean isInMemory = fi.isInMemory();
                long sizeInBytes = fi.getSize();

                if (fileName.lastIndexOf("\\") >= 0) {
                    file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
                } else {
                    file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
                }

                fi.write(file);
                session.setAttribute("filepath", fileName.substring(fileName.lastIndexOf("\\") + 1));
                String did = (String) session.getAttribute("did");
                response.sendRedirect("up.jsp?doctorid=" + did);
            }
        } 

        out.println("</body>"); 
        out.println("</html>");

    } catch (Exception ex) {
        ex.printStackTrace();
    }
} else {
    out.println("<html>"); 
    out.println("<head>");
    out.println("<title>Servlet upload</title>"); 
    out.println("</head>");
    out.println("<body>"); 
    out.println("<p>No File Uploaded</p>");
    out.println("</body>"); 
    out.println("</html>");
}
%>
