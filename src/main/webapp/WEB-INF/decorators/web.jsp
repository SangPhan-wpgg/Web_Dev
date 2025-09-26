<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title><sitemesh:write property="title"/></title>

    <!-- Bootstrap CSS & JS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
</head>
<body class="d-flex flex-column vh-100">

    <!-- Header -->
    <header>
        <%@ include file="/common/web/header.jsp" %>
    </header>

    <!-- Navbar trên cùng -->
    <%@ include file="/common/web/navbar.jsp" %>

    <!-- Topbar (hiện user + dropdown) -->
    <%@ include file="/common/web/topbar.jsp" %>

    <!-- Layout chính chia 2 cột -->
    <div class="d-flex flex-grow-1">
        <!-- Sidebar -->
        <aside>
            <%@ include file="/common/web/left.jsp" %>
        </aside>

        <!-- Nội dung body -->
        <main class="flex-fill p-4">
            <sitemesh:write property="body"/>
        </main>
    </div>

    <!-- Footer -->
    <footer class="mt-auto">
        <%@ include file="/common/web/footer.jsp" %>
    </footer>

</body>
</html>
