<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex align-items-center justify-content-center" style="height: 100vh;">

    <div class="card shadow-lg p-4" style="width: 380px; border-radius: 15px;">
    <h3 class="text-center mb-4 text-primary">Đăng Nhập</h3>

    <c:if test="${alert != null}">
        <div class="alert alert-danger text-center">${alert}</div>
    </c:if>

    <form action="login" method="post">
        <div class="mb-3">
            <label class="form-label">Tài khoản</label>
            <input type="text" name="username" class="form-control" placeholder="Nhập tài khoản">
        </div>

        <div class="mb-3">
            <label class="form-label">Mật khẩu</label>
            <input type="password" name="password" class="form-control" placeholder="Nhập mật khẩu">
        </div>

        <div class="d-flex justify-content-between align-items-center mb-3">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="remember" id="rememberMe">
                <label class="form-check-label" for="rememberMe">Nhớ tôi</label>
            </div>
            <a href="ForgotPassword.jsp" class="text-decoration-none">Quên mật khẩu?</a>
        </div>

        <div class="d-grid mb-3">
            <button type="submit" class="btn btn-primary btn-lg">Đăng nhập</button>
        </div>

        <div class="text-center">
            <span>Nếu chưa có tài khoản, hãy </span>
            <a href="register" class="fw-bold text-decoration-none">Đăng ký</a>
        </div>
    </form>
</div>
  
</body>
</html>
