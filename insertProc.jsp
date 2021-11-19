<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Productreg.PrDAO"%>
<%@ page import="java.io.PrintWriter" %>
<% 	request.setCharacterEncoding("EUC-KR");	%>
<jsp:useBean id="bean" class="Productreg.Bean" scope="page" />
<jsp:setProperty name="bean" property="name"/>
<jsp:setProperty name="bean" property="category"/>
<jsp:setProperty name="bean" property="price"/>
<jsp:setProperty name="bean" property="content"/>
<!DOCTYPE html>
<html>
<body> 

<%
	PrDAO prDAO = new PrDAO();
	int result = prDAO.write(bean.getName(),bean.getCategory(),bean.getPrice(),bean.getContent());
	if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글쓰기에 실패')");
		script.println("history.back()");
		script.println("</script>");	
	}
	else{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'home.jsp'");
		script.println("</script>");
	}

%>
</body>
</html>