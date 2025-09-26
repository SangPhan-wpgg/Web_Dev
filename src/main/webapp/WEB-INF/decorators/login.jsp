<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
	<jsp:include page="/common/login/header.jsp" />
</header>
    <main>
        <!-- Nội dung body của trang gốc -->
        <sitemesh:write property="body"/>
    </main>
    
<footer>
	<jsp:include page="/common/login/footer.jsp" />
</footer>
</body>
</html>