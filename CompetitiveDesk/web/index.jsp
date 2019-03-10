<%-- 
    Document   : index
    Created on : 18 Apr, 2015, 11:57:30 AM
    Author     : admin123
--%>

<%@page import="com.competitivedesk.common.util.Constant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>

	<%
	//RequestDispatcher dispatcher = request.getRequestDispatcher("/online-aptitude-test");
	//RequestDispatcher dispatcher = request.getRequestDispatcher("/study-docs");
	RequestDispatcher dispatcher = request.getRequestDispatcher(Constant.COMPETITIVE_HOME_PAGE);
dispatcher.forward(request, response);
           /*  response.sendRedirect(request.getContextPath() + "/auth/checkUser"); */
        %>
</body>
</html>
