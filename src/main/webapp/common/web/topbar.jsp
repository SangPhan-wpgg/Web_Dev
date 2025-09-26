<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Header</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<!-- Topbar riêng (nếu không muốn gắn vào header) -->
<div class="d-flex justify-content-end align-items-center bg-secondary text-white px-3 py-2">
  <c:if test="${sessionScope.account != null}">
    Xin chào, <strong>${sessionScope.account.fullName}</strong> &nbsp;

  </c:if>

  <c:if test="${sessionScope.account == null}">
    <a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-sm btn-light">Đăng nhập</a>
  </c:if>
</div>
</body>
</html>