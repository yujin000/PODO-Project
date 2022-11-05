<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.mail.*"%>
<%@ page import="java.util.Properties"%>
<%@ page import="DAO.MemberDAO"%>
<%@ page import="util.SHA256"%>
<%@ page import="util.Gmail"%>
<%@ page import="java.io.PrintWriter"%>
<% 

	MemberDAO dao = new MemberDAO();
	String email = null;
	if(session.getAttribute("email") != null){
		email = (String) session.getAttribute("email");
	}
	if(email == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요');");
		script.println("loaction.href ='InputFom.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	boolean emailChecked = MemberDAO.getEmailChecked(email);
	/* Email, Password, SHA256.getSHA256(Email),false */
	if(result == -1) {
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디 입니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}else {
		session.setAttribute("email", email);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'eamilSendAction.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
%>
<%@ %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>