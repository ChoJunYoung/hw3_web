<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    PrintWriter writer = null;
    String id = request.getParameter("login_id");
    String password = request.getParameter("login_password");
    String result;
    try {
        String filePath = application.getRealPath("/user/"+ id + ".txt");
        writer = new PrintWriter(filePath);
        writer.println(password);

        result = "s";
    } catch (IOException ioe) {
        result = "f";
    } finally {
        try {
            writer.close();
        } catch (Exception e) {
        }
    }

    if(result.equals("s")){
        out.println("<script>");
        out.println("alert('전송 성공')");
        out.println("location.href='index.html'");
        out.println("</script>");
    }
%>