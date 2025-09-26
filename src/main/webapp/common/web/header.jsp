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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/MyApp.jsp">MyApp</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
          <!-- Menu trái -->
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	          <c:choose>
			    <c:when test="${sessionScope.account.roleid == 0}">
			        <li class="nav-item">
			            <a class="nav-link" href="${pageContext.request.contextPath}/admin/home.jsp">Trang chủ</a>
			        </li>
			    </c:when>
			
			    <c:when test="${sessionScope.account.roleid == 1}">
			        <li class="nav-item">
			            <a class="nav-link" href="${pageContext.request.contextPath}/manager/home.jsp">Trang chủ</a>
			        </li>
			    </c:when>
			
			    <c:otherwise>
			        <li class="nav-item">
			            <a class="nav-link" href="${pageContext.request.contextPath}home.jsp">Trang chủ</a>
			        </li>
			    </c:otherwise>
			</c:choose>
            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">Giới thiệu</a></li>
            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/contact.jsp">Liên hệ</a></li>
          </ul>

          <!-- User dropdown -->
          <ul class="navbar-nav">
            <c:if test="${sessionScope.account != null}">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                   data-bs-toggle="dropdown" aria-expanded="false">
                  👤 ${sessionScope.account.fullName}
                </a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/profile">Sửa hồ sơ</a></li>
                  <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Đăng xuất</a></li>
                </ul>
              </li>
            </c:if>

            <c:if test="${sessionScope.account == null}">
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/login.jsp">Đăng nhập</a>
              </li>
            </c:if>
          </ul>
        </div>
      </div>
    </nav>
</body>
</html>
