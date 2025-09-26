<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<div class="bg-success text-white text-center py-5 mb-4">
  <div class="container">
    <h1 class="display-4 fw-bold">👋 Xin chào, ${sessionScope.account.fullName}</h1>
    <p class="lead">Chào mừng bạn đến với MyApp</p>
  </div>
</div>

<div class="container my-5">
  <!-- Thông tin -->
  <div class="card border-success shadow mb-5 rounded-4">
    <div class="card-body">
      <h5 class="card-title text-success fw-bold">Thông tin của bạn</h5>
      <p><strong>Tài khoản:</strong> ${sessionScope.account.userName}</p>
      <p><strong>Email:</strong> ${sessionScope.account.email}</p>
      <p><strong>Vai trò:</strong> Người dùng</p>
    </div>
  </div>

  <!-- Tính năng -->
  <div class="row g-4">
    <div class="col-md-4">
      <div class="card text-center shadow-sm border-0 rounded-4 hover-shadow">
        <div class="card-body">
          <div class="display-3 text-success">🛒</div>
          <h5 class="fw-bold">Mua sắm</h5>
          <a href="#" class="btn btn-success rounded-pill w-100">Khám phá</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card text-center shadow-sm border-0 rounded-4 hover-shadow">
        <div class="card-body">
          <div class="display-3 text-warning">📦</div>
          <h5 class="fw-bold">Đơn hàng</h5>
          <a href="#" class="btn btn-warning rounded-pill w-100">Xem ngay</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card text-center shadow-sm border-0 rounded-4 hover-shadow">
        <div class="card-body">
          <div class="display-3 text-info">👤</div>
          <h5 class="fw-bold">Hồ sơ</h5>
          <a href="#" class="btn btn-info text-white rounded-pill w-100">Cập nhật</a>
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
