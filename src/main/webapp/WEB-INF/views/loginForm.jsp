<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="loginform cf">
	<form name="frm" action="j_spring_security_check" method="post">
		<ul>
			<li><label for="m_id">ID</label> <input id="m_id"
				type="text" name="m_id" placeholder="ID" required></li>
			<li><label for="m_password">Password</label> <input id="m_password"
				type="password" name="m_password" placeholder="PASSWORD" required></li>
			<li><input type="submit" value="로그인" /></li>
		</ul>

		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

	</form>

	</section>
	<c:if test="${not empty error}">
		<div class="error">${error}</div>
	</c:if>
	<c:if test="${not empty msg}">
		<div class="msg">${msg}</div>
	</c:if>



</body>
</html>