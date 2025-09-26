package project_27_8_vidu1.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import project_27_8_vidu1.entity.User;
import project_27_8_vidu1.services.UserService;
import project_27_8_vidu1.services.UserServiceImpl;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;

/**
 * Servlet implementation class ProfileController
 */
@WebServlet("/profile")
@MultipartConfig
public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileController() {
        super();
        // TODO Auto-generated constructor stub
    }

    private UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/profile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("account");

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/login.jsp");
            return;
        }

        try {
            req.setCharacterEncoding("UTF-8");
            String fullName = req.getParameter("fullName");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            String password = req.getParameter("password");

            // cập nhật
            user.setFullName(fullName);
            user.setEmail(email);
            user.setPhone(phone);
            if (password != null && !password.trim().isEmpty()) {
                user.setPassWord(password); // TODO: hash mật khẩu
            }

            // xử lý upload avatar
            Part filePart = req.getPart("avatar");
            if (filePart != null && filePart.getSize() > 0) {
                String fileName = System.currentTimeMillis() + "_" + filePart.getSubmittedFileName();
                String uploadPath = "D:\\Web\\images"; // chỉnh lại theo project của bạn
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdirs();
                filePart.write(uploadPath + File.separator + fileName);
                user.setAvatar(fileName);
            }

            userService.insert(user); // hoặc userService.update(user) nếu bạn có hàm update
            req.getSession().setAttribute("account", user);
            req.setAttribute("message", "Cập nhật hồ sơ thành công!");
        } catch (Exception e) {
            req.setAttribute("message", "Lỗi: " + e.getMessage());
        }

        req.getRequestDispatcher("/profile.jsp").forward(req, resp);
    }

}
