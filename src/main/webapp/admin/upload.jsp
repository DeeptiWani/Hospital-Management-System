<%@ page import="java.io.*, java.util.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*, org.apache.commons.io.output.*" %>
<%
String filePath = getServletContext().getRealPath("/doctors/");
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
                String fileName = new File(fi.getName()).getName();
                if (!fileName.isEmpty()) {
                    file = new File(filePath, fileName);
                    fi.write(file);
                    session.setAttribute("filepath", fileName);
                    // Note: Redirect should occur after processing all files, not here
                }
            }
        }

        // After processing all files, redirect should happen
        response.sendRedirect("mdoctor.jsp");

        out.println("</body>");
        out.println("</html>");
    } catch (Exception ex) {
        ex.printStackTrace();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Error</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<p>Error occurred: " + ex.getMessage() + "</p>");
        out.println("</body>");
        out.println("</html>");
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
