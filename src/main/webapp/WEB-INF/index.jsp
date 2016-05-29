<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    String id = "";

    id = (String) session.getAttribute("id");

    if (id != null) {
        response.sendRedirect("main");
    }
%>
<html>
<head>
    <title>title</title>
    <link rel="stylesheet" href="/css/main.css"/>
</head>
<body>
<form method="post" id="login_form">
    ID : <input type="text" name="login_id"><br>
    PW : <input type="password" name="login_password"><br>
    <input type="button" value="login" onclick="goNextPage(this.value)">
    <input type="button" value="join" onclick="goNextPage(this.value)">
</form>
<script type="text/javascript" src="/js/indexScript.js"></script>
</body>
</html>
