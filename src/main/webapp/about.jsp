<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Giới thiệu</title>
  <!-- Bootstrap 5 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    .hero {
      background: url('https://source.unsplash.com/1600x600/?technology,office') no-repeat center center/cover;
      color: white;
      text-align: center;
      padding: 120px 20px;
      position: relative;
    }
    .hero::after {
      content: "";
      position: absolute;
      top:0; left:0; right:0; bottom:0;
      background: rgba(0,0,0,0.5);
    }
    .hero-content {
      position: relative;
      z-index: 2;
    }
    .section-title {
      margin: 50px 0 20px;
      text-align: center;
      font-weight: 700;
      color: #2c3e50;
    }
    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.15);
      transition: 0.3s;
    }
  </style>
</head>
<body>
<%@ include file="common/web/header.jsp" %>

<!-- Hero section -->
<section class="hero">
  <div class="hero-content">
    <h1 class="display-4 fw-bold">Chào mừng đến với MyApp 🚀</h1>
    <p class="lead">Ứng dụng quản lý danh mục, sản phẩm và tài khoản — đơn giản, trực quan và mạnh mẽ.</p>
  </div>
</section>

<!-- About section -->
<div class="container">
  <h2 class="section-title">Về MyApp</h2>
  <p class="text-center mb-5">
    MyApp được phát triển nhằm hỗ trợ các doanh nghiệp và cá nhân quản lý danh mục, sản phẩm, tài khoản một cách hiệu quả.
    Với giao diện trực quan, dễ sử dụng, MyApp giúp tiết kiệm thời gian và nâng cao hiệu suất công việc.
  </p>

  <!-- Services / Features -->
  <div class="row text-center mb-5">
    <div class="col-md-4 mb-4">
      <div class="card p-4 h-100">
        <div class="card-body">
          <h5 class="card-title">📂 Quản lý danh mục</h5>
          <p class="card-text">Thêm, sửa, xóa danh mục dễ dàng, hiển thị trực quan như các sàn thương mại điện tử.</p>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card p-4 h-100">
        <div class="card-body">
          <h5 class="card-title">🛒 Quản lý sản phẩm</h5>
          <p class="card-text">Tích hợp quản lý sản phẩm, hình ảnh, thông tin chi tiết giúp quản lý hiệu quả hơn.</p>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card p-4 h-100">
        <div class="card-body">
          <h5 class="card-title">👤 Quản lý người dùng</h5>
          <p class="card-text">Hệ thống tài khoản phân quyền rõ ràng (Admin, User), an toàn và tiện lợi.</p>
        </div>
      </div>
    </div>
  </div>

  <!-- Team / Developers -->
  <h2 class="section-title">Đội ngũ phát triển</h2>
  <div class="row text-center">
    <div class="col-md-4 mb-4">
      <div class="card h-100">
        <img src="https://source.unsplash.com/300x200/?developer" class="card-img-top" alt="Team Member">
        <div class="card-body">
          <h5 class="card-title">Nguyễn Văn A</h5>
          <p class="card-text">Back-end Developer</p>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card h-100">
        <img src="https://source.unsplash.com/300x200/?programmer" class="card-img-top" alt="Team Member">
        <div class="card-body">
          <h5 class="card-title">Trần Thị B</h5>
          <p class="card-text">Front-end Developer</p>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card h-100">
        <img src="https://source.unsplash.com/300x200/?designer" class="card-img-top" alt="Team Member">
        <div class="card-body">
          <h5 class="card-title">Lê Văn C</h5>
          <p class="card-text">UI/UX Designer</p>
        </div>
      </div>
    </div>
  </div>
</div>

<%@ include file="common/web/footer.jsp" %>
</body>
</html>
