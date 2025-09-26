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
<!-- Sidebar bên trái -->
<div class="list-group">
  <a href="${pageContext.request.contextPath}/dashboard" class="list-group-item list-group-item-action">Bảng điều khiển</a>
  <a href="${pageContext.request.contextPath}/profile" class="list-group-item list-group-item-action">Hồ sơ</a>
  <a href="${pageContext.request.contextPath}/orders" class="list-group-item list-group-item-action">Đơn hàng</a>
</div>
</body>
</html>