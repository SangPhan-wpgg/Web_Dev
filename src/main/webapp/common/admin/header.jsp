<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/admin">Admin Panel</a>

    <ul class="navbar-nav ms-auto">
      <c:if test="${sessionScope.account != null}">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="adminDropdown" role="button"
             data-bs-toggle="dropdown" aria-expanded="false">
            ${sessionScope.account.fullName}
          </a>
          <ul class="dropdown-menu dropdown-menu-end">
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/profile">Hồ sơ</a></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Đăng xuất</a></li>
          </ul>
        </li>
      </c:if>
    </ul>
  </div>
</nav>
