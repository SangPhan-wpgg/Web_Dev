<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<div class="bg-primary text-white text-center py-5 mb-4">
  <div class="container">
    <h1 class="display-4 fw-bold">💼 Xin chào Manager, ${sessionScope.account.fullName}</h1>
    <p class="lead">Trang quản lý hệ thống</p>
  </div>
</div>

<div class="container my-5">
  <!-- Thông tin -->
  <div class="card border-0 shadow-lg mb-5">
    <div class="card-body">
      <h5 class="card-title text-primary fw-bold">Thông tin tài khoản</h5>
      <p><strong>Tài khoản:</strong> ${sessionScope.account.userName}</p>
      <p><strong>Email:</strong> ${sessionScope.account.email}</p>
      <p><strong>Vai trò:</strong> Manager</p>
    </div>
  </div>

  <!-- Chức năng -->
  <div class="row g-4">
    <div class="col-md-4">
      <div class="card text-center shadow-sm hover-shadow border-start border-5 border-primary">
        <div class="card-body">
          <div class="display-3 text-primary">📊</div>
          <h5 class="fw-bold">Báo cáo</h5>
          <a href="#" class="btn btn-outline-primary w-100">Xem ngay</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card text-center shadow-sm hover-shadow border-start border-5 border-warning">
        <div class="card-body">
          <div class="display-3 text-warning">📦</div>
          <h5 class="fw-bold">Sản phẩm</h5>
          <a href="#" class="btn btn-outline-warning w-100">Quản lý</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card text-center shadow-sm hover-shadow border-start border-5 border-success">
        <div class="card-body">
          <div class="display-3 text-success">👥</div>
          <h5 class="fw-bold">Nhân sự</h5>
          <a href="#" class="btn btn-outline-success w-100">Theo dõi</a>
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
