<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>MyApp - Trang Chủ</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
  <style>
    body { font-family: 'Segoe UI', sans-serif; }
    .hero {
      background: url('https://source.unsplash.com/1600x800/?technology,abstract') no-repeat center center/cover;
      height: 100vh;
      display: flex; align-items: center; justify-content: center;
      color: white; text-align: center;
      position: relative;
    }
    .hero::after {
      content:""; position:absolute; top:0; left:0; right:0; bottom:0;
      background: rgba(0,0,0,0.55);
    }
    .hero-content {
      position: relative; z-index: 2;
    }
    .btn-custom {
      padding: 12px 24px;
      border-radius: 8px;
      font-size: 1.1rem;
      transition: all 0.3s ease-in-out;
    }
    .btn-custom:hover {
      transform: scale(1.05);
      box-shadow: 0 8px 20px rgba(0,0,0,0.3);
    }
    .feature-icon { font-size: 3rem; margin-bottom: 15px; }
    .testimonial {
      font-style: italic;
      background: #f8f9fa;
      border-left: 5px solid #0d6efd;
      padding: 20px;
    }
  </style>
</head>
<body>

<!-- Hero -->
<section class="hero">
  <div class="hero-content" data-aos="fade-up">
    <h1 class="display-3 fw-bold">Chào mừng đến với MyApp 🚀</h1>
    <p class="lead">Ứng dụng quản lý danh mục, sản phẩm và tài khoản chuyên nghiệp</p>
    <!-- Nút quay về trang theo role -->
    <div class="mt-4">
      <c:choose>
        <c:when test="${sessionScope.account != null && sessionScope.account.roleid == 1}">
          <a href="${pageContext.request.contextPath}/admin/home.jsp" class="btn btn-warning btn-lg btn-custom">🔑 Về trang Admin</a>
        </c:when>
        <c:when test="${sessionScope.account != null && sessionScope.account.roleid == 2}">
          <a href="${pageContext.request.contextPath}/manager/home.jsp" class="btn btn-info btn-lg btn-custom">📊 Về trang Quản lý</a>
        </c:when>
        <c:otherwise>
          <a href="${pageContext.request.contextPath}/home.jsp" class="btn btn-light btn-lg btn-custom">🏠 Trang chủ</a>
        </c:otherwise>
      </c:choose>
      <c:if test="${sessionScope.account == null}">
        <a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-success btn-lg btn-custom ms-2">🔐 Đăng nhập</a>
      </c:if>
    </div>
  </div>
</section>

<!-- Giới thiệu -->
<section class="py-5">
  <div class="container">
    <h2 class="text-center mb-4 fw-bold" data-aos="fade-up">Về MyApp</h2>
    <div class="row g-4">
      <div class="col-md-4" data-aos="zoom-in">
        <div class="card h-100 shadow-sm border-0 text-center p-4">
          <div class="feature-icon text-primary">⚡</div>
          <h5 class="fw-bold">Nhanh chóng</h5>
          <p>Giao diện trực quan, tốc độ xử lý mượt mà, tối ưu trải nghiệm người dùng.</p>
        </div>
      </div>
      <div class="col-md-4" data-aos="zoom-in" data-aos-delay="150">
        <div class="card h-100 shadow-sm border-0 text-center p-4">
          <div class="feature-icon text-success">🔒</div>
          <h5 class="fw-bold">Bảo mật</h5>
          <p>Dữ liệu người dùng được bảo vệ với các tiêu chuẩn bảo mật hiện đại.</p>
        </div>
      </div>
      <div class="col-md-4" data-aos="zoom-in" data-aos-delay="300">
        <div class="card h-100 shadow-sm border-0 text-center p-4">
          <div class="feature-icon text-warning">🌐</div>
          <h5 class="fw-bold">Linh hoạt</h5>
          <p>Hỗ trợ đa nền tảng, dễ dàng mở rộng và tích hợp thêm tính năng.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Tính năng -->
<section class="py-5 bg-light" id="features">
  <div class="container">
    <h2 class="text-center mb-4 fw-bold" data-aos="fade-up">Tính năng nổi bật</h2>
    <div class="row g-4">
      <div class="col-md-6" data-aos="fade-right">
        <div class="p-4 bg-white shadow-sm rounded">
          <h5>📂 Quản lý danh mục</h5>
          <p>Thêm, sửa, xóa danh mục dễ dàng.</p>
        </div>
      </div>
      <div class="col-md-6" data-aos="fade-left">
        <div class="p-4 bg-white shadow-sm rounded">
          <h5>👥 Quản lý tài khoản</h5>
          <p>Phân quyền và quản lý user/admin/manager.</p>
        </div>
      </div>
      <div class="col-md-6" data-aos="fade-right">
        <div class="p-4 bg-white shadow-sm rounded">
          <h5>📊 Thống kê trực quan</h5>
          <p>Theo dõi dữ liệu với biểu đồ sinh động.</p>
        </div>
      </div>
      <div class="col-md-6" data-aos="fade-left">
        <div class="p-4 bg-white shadow-sm rounded">
          <h5>🛒 Quản lý sản phẩm</h5>
          <p>Dễ dàng thêm, chỉnh sửa và quản lý sản phẩm.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Testimonials -->
<section class="py-5">
  <div class="container">
    <h2 class="text-center fw-bold mb-4" data-aos="fade-up">Người dùng nói gì về MyApp?</h2>
    <div class="row">
      <div class="col-md-4" data-aos="fade-up">
        <div class="testimonial shadow-sm rounded">
          "Ứng dụng dễ dùng, giao diện rất đẹp và hiện đại!"
        </div>
      </div>
      <div class="col-md-4" data-aos="fade-up" data-aos-delay="150">
        <div class="testimonial shadow-sm rounded">
          "Hệ thống quản lý nhanh chóng, tiện lợi cho công việc của tôi."
        </div>
      </div>
      <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
        <div class="testimonial shadow-sm rounded">
          "Bảo mật tốt, tôi rất yên tâm khi sử dụng."
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-3">
  <p class="mb-0">&copy; 2025 MyApp. All rights reserved.</p>
</footer>

<script>
  AOS.init({ duration: 1000, once: true });
</script>
</body>
</html>
