package project_27_8_vidu1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import project_27_8_vidu1.config.DBConnection;
import project_27_8_vidu1.entity.Category;

public class CategoryDAOImpl extends DBConnection implements CategoryDAO {
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("dataSource");
    @Override
    public void insert(Category category) throws SQLException {
    	EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(category);
            em.getTransaction().commit();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            throw e;
        } finally {
            em.close();
        }
    }

    @Override
    public void edit(Category category) throws SQLException {
        String sql = "UPDATE Category SET cate_name = ?, icons = ? WHERE cate_id = ?";
        try (Connection con = super.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, category.getCatename());
            ps.setString(2, category.getIcon());
            ps.setInt(3, category.getCateid());
            ps.executeUpdate();
        }
    }

    @Override
    public void delete(int id) throws SQLException {
    	EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Category category = em.find(Category.class, id);
            if (category != null) {
                em.remove(category);
            }
            em.getTransaction().commit();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            throw e;
        } finally {
            em.close();
        }
    }

    @Override
    public Category get(int id) throws SQLException {
        String sql = "SELECT * FROM Category WHERE cate_id = ?";
        try (Connection con = super.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Category category = new Category();
                    category.setCateid(rs.getInt("cate_id"));
                    category.setCatename(rs.getString("cate_name"));
                    category.setIcon(rs.getString("icons"));
                    return category;
                }
            }
        }
        return null;
    }

    @Override
    public Category get(String name) throws SQLException {
        String sql = "SELECT * FROM Category WHERE cate_name = ?";
        try (Connection con = super.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, name);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Category category = new Category();
                    category.setCateid(rs.getInt("cate_id"));
                    category.setCatename(rs.getString("cate_name"));
                    category.setIcon(rs.getString("icons"));
                    return category;
                }
            }
        }
        return null;
    }

    @Override
    public List<Category> getAll() throws SQLException {
    	EntityManager em = emf.createEntityManager();
        try {
            Query query = em.createQuery("SELECT c FROM Category c");
            return query.getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public List<Category> search(String keyword) throws SQLException {
        List<Category> categories = new ArrayList<>();
        String sql = "SELECT * FROM Category WHERE cate_name LIKE ?";
        try (Connection con = super.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, "%" + keyword + "%");
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Category category = new Category();
                    category.setCateid(rs.getInt("cate_id"));
                    category.setCatename(rs.getString("cate_name"));
                    category.setIcon(rs.getString("icons"));
                    categories.add(category);
                }
            }
        }
        return categories;
    }
}