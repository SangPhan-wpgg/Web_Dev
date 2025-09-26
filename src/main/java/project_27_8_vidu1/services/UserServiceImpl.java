package project_27_8_vidu1.services;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;
import project_27_8_vidu1.dao.UserDao;
import project_27_8_vidu1.dao.UserDaoImpl;
import project_27_8_vidu1.entity.User;

public class UserServiceImpl implements UserService {
    private UserDao userDao = new UserDaoImpl();
    private EntityManagerFactory emf = Persistence.createEntityManagerFactory("dataSource");
    @Override
    public User login(String username, String password) {
    	EntityManager em = emf.createEntityManager();
        try {
            TypedQuery<User> query = em.createQuery(
                "SELECT u FROM User u WHERE u.userName = :username AND u.passWord = :password", User.class);
            query.setParameter("username", username);
            query.setParameter("password", password); // Lưu ý: Nên mã hóa password trong thực tế
            return query.getResultList().stream().findFirst().orElse(null);
        } finally {
            em.close();
        }
    }
    public User get(String username) {
    	return userDao.get(username);
    }
    @Override
    public boolean register(String username, String password, String email, String 
    fullname, String phone ) {
	    if (userDao.checkExistUsername(username)) {
	    return false;
	    }
	    long millis=System.currentTimeMillis(); 
	    java.sql.Date date=new java.sql.Date(millis);
	    userDao.insert(new User(email, username, fullname,password,null,5,phone,date));
	    return true;
    }
    public boolean checkExistEmail(String email) {
    	return userDao.checkExistEmail(email);
    }
    public boolean checkExistUsername(String username) {
    	return userDao.checkExistUsername(username);
    }
    @Override
    public boolean checkExistPhone(String phone) {
    	return userDao.checkExistPhone(phone);
    }
    @Override
    public void insert(User user) {
    	userDao.insert(user);
    }
}
