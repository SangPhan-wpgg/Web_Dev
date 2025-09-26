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
<%@ include file="common/web/header.jsp" %>

<div class="container mt-4">
  <h2>Liên hệ</h2>
  <form>
    <div class="mb-3">
      <label class="form-label">Họ tên</label>
      <input type="text" class="form-control" name="name">
    </div>
    <div class="mb-3">
      <label class="form-label">Email</label>
      <input type="email" class="form-control" name="email">
    </div>
    <div class="mb-3">
      <label class="form-label">Nội dung</label>
      <textarea class="form-control" rows="4" name="message"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Gửi</button>
  </form>
</div>

<%@ include file="common/web/footer.jsp" %>
</body>
</html>