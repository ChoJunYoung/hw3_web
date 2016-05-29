<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>

<% request.setCharacterEncoding("euc-kr");%>
<%

    String id = "";

    id = (String) session.getAttribute("id");

    if (id == null || id.equals("")) {
        response.sendRedirect("index");
    }

    String filePath = application.getRealPath("/shopContent/.txt");
    File file = new File(filePath);

    if (file.isFile()) {
        BufferedReader reader = new BufferedReader(new FileReader(filePath));
        filePW = reader.readLine();

%>

<html>
<head>
    <title>메인 페이지</title>
</head>
<body>
<table>
    <tr>
        <td></td>
    </tr>
</table>


<form method="post" id="logout_form" action="logout">
    <input type="submit" value="logout">
</form>

