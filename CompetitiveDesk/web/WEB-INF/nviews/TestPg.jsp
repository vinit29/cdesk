<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="<%=request.getParameter("returnUrl")%>">
		Amount: <input name="amount"
			value="<%=request.getParameter("amount")%>"> <br>
		OrderId: <input name="cdtOrderId"
			value="<%=request.getParameter("cdtOrderId")%>"> <br>
		<%-- PaymentMode: <input name="paymentMode"
			value="<%=request.getParameter("paymentMode")%>"> <br> --%>

	
		<br> <input type="submit" name="status" value="success">
		<input type="submit" name="status" value="failed">
	</form>

</body>
</html>