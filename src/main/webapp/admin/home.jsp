<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<div class="bg-dark text-white text-center py-5 mb-4">
  <div class="container">
    <h1 class="display-4 fw-bold">⚡ Xin chào Admin, ${sessionScope.account.fullName}</h1>
    <p class="lead">Bảng điều khiển quản trị hệ thống</p>
  </div>
</div>

<div class="container my-5">
  <!-- Thông tin -->
  <div class="card bg-secondary text-white shadow-lg border-0 mb-5">
    <div class="card-body">
      <h5 class="card-title text-warning fw-bold">Thông tin tài khoản</h5>
      <ul class="list-group list-group-flush">
        <li class="list-group-item bg-secondary text-white"><strong>Tài khoản:</strong> ${sessionScope.account.userName}</li>
        <li class="list-group-item bg-secondary text-white"><strong>Email:</strong> ${sessionScope.account.email}</li>
        <li class="list-group-item bg-secondary text-white"><strong>Vai trò:</strong> Admin</li>
      </ul>
    </div>
  </div>

  <!-- Chức năng -->
  <div class="row g-4">
    <div class="col-md-4">
      <div class="card text-center shadow-sm hover-shadow">
        <div class="card-body">
          <div class="display-3 text-success">📂</div>
          <h5 class="fw-bold">Quản lý danh mục</h5>
          <a href="<c:url value='/admin/category/list'/>" class="btn btn-outline-success w-100">Đi đến</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card text-center shadow-sm hover-shadow">
        <div class="card-body">
          <div class="display-3 text-primary">👥</div>
          <h5 class="fw-bold">Người dùng</h5>
          <a href="#" class="btn btn-outline-primary w-100">Đi đến</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card text-center shadow-sm hover-shadow">
        <div class="card-body">
          <div class="display-3 text-info">📊</div>
          <h5 class="fw-bold">Thống kê</h5>
          <a href="#" class="btn btn-outline-info w-100">Đi đến</a>
        </div>
      </div>
    </div>
  </div>
</div>


<style>
  .hover-shadow {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }
  .hover-shadow:hover {
    transform: translateY(-8px) scale(1.02);
    box-shadow: 0 10px 25px rgba(0,0,0,0.2) !important;
  }
</style>
</body>
</html>
