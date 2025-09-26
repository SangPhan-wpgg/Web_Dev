<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Quản lý danh mục</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { background: #f5f5f5; }
    .card-category {
      transition: transform 0.2s, box-shadow 0.2s;
    }
    .card-category:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    }
    .card-img-top {
      max-height: 180px;
      object-fit: cover;
    }
    .card-title {
      font-size: 1.1rem;
      font-weight: 600;
      margin-bottom: 10px;
    }
    .btn-action {
      margin-right: 5px;
    }
  </style>
</head>
<body>
<div class="container py-4">

  <!-- Hiển thị thông báo -->
  <c:if test="${not empty param.message}">
    <div class="alert alert-success">
      ${param.message == 'deleteSuccess' ? 'Xóa danh mục thành công!' : param.message}
    </div>
  </c:if>
  <c:if test="${not empty param.error}">
    <div class="alert alert-danger">${param.error}</div>
  </c:if>

  <div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Danh mục sản phẩm</h2>
    <a href="<c:url value='/admin/category/add'/>" class="btn btn-success">+ Thêm danh mục</a>
  </div>

  <div class="row">
    <c:choose>
      <c:when test="${not empty cateList}">
        <c:forEach items="${cateList}" var="cate">
          <div class="col-md-4 col-sm-6 mb-4">
            <div class="card card-category h-100">
              <c:if test="${not empty cate.icon}">
                <c:url value="/image?fname=${cate.icon}" var="imgUrl"></c:url>
                <img src="${imgUrl}" class="card-img-top" alt="${cate.catename}">
              </c:if>
              <div class="card-body d-flex flex-column">
                <h5 class="card-title">${cate.catename}</h5>
                <div class="mt-auto">
                  <a href="<c:url value='/admin/category/edit?id=${cate.cateid}'/>" class="btn btn-primary btn-sm btn-action">Sửa</a>
                  <form action="<c:url value='/admin/category/delete'/>" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="${cate.cateid}">
                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc muốn xóa danh mục này?');">
                      Xóa
                    </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </c:forEach>
      </c:when>
      <c:otherwise>
        <div class="col-12">
          <div class="alert alert-info text-center">Không có danh mục nào.</div>
        </div>
      </c:otherwise>
    </c:choose>
  </div>

  <c:if test="${not empty sessionScope.account}">
    <div class="text-end">
      <a href="<c:url value='/logout'/>" class="btn btn-outline-danger">Đăng xuất</a>
    </div>
  </c:if>

</div>
</body>
</html>
