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
<!-- Thanh menu ngang phụ -->
<nav class="nav nav-pills flex-row justify-content-center bg-light py-2">
  <a class="nav-link" href="${pageContext.request.contextPath}/products">Sản phẩm</a>
  <a class="nav-link" href="${pageContext.request.contextPath}/news">Tin tức</a>
  <a class="nav-link" href="${pageContext.request.contextPath}/support">Hỗ trợ</a>
</nav>
</body>
</html>