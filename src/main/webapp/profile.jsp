<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="common/web/header.jsp" %>

<div class="container mt-4">
  <h2>Sửa hồ sơ cá nhân</h2>

  <c:if test="${not empty message}">
    <div class="alert alert-info">${message}</div>
  </c:if>

  <c:if test="${sessionScope.account != null}">
    <form action="${pageContext.request.contextPath}/profile" method="post" enctype="multipart/form-data">
      <input type="hidden" name="id" value="${sessionScope.account.id}">

      <div class="mb-3">
        <label class="form-label">Họ tên</label>
        <input type="text" class="form-control" name="fullName"
               value="${sessionScope.account.fullName}" required>
      </div>
      <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="email" class="form-control" name="email"
               value="${sessionScope.account.email}" required>
      </div>
      <div class="mb-3">
        <label class="form-label">Số điện thoại</label>
        <input type="text" class="form-control" name="phone"
               value="${sessionScope.account.phone}">
      </div>
      <div class="mb-3">
        <label class="form-label">Mật khẩu mới</label>
        <input type="password" class="form-control" name="password" placeholder="Nhập nếu muốn đổi mật khẩu">
      </div>
      <div class="mb-3">
        <label class="form-label">Ảnh đại diện</label><br>
        <c:if test="${not empty sessionScope.account.avatar}">
          <img src="${pageContext.request.contextPath}/images/${sessionScope.account.avatar}" 
               alt="avatar" style="width:80px;height:80px;border-radius:50%;"><br>
        </c:if>
        <input type="file" class="form-control" name="avatar">
      </div>
      <button type="submit" class="btn btn-primary">Lưu thay đổi</button>
    </form>
  </c:if>

  <c:if test="${sessionScope.account == null}">
    <div class="alert alert-warning">Bạn chưa đăng nhập!
      <a href="${pageContext.request.contextPath}/login.jsp">Đăng nhập</a>
    </div>
  </c:if>
</div>

<%@ include file="common/web/footer.jsp" %>
