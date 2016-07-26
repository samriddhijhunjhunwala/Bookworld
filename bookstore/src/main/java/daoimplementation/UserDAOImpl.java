package daoimplementation;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.User;


@Repository
public class UserDAOImpl  {
	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDAOImpl()
	{
		
	}
	
	public void addUser(User u) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(u);
        
    }
    
    public void updateUser(User u) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(u);
    }
    
    public List<User> listUsers() {
        Session session = this.sessionFactory.getCurrentSession();
        List<User> usersList = session.createQuery("from User").list();
        return usersList;
    }
    
    public User getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();      
        User u = (User) session.load(User.class, new Integer(id));
        
        return u;
    }
    
    @Transactional
    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User u = (User) session.load(User.class, new Integer(id));
        if(null != u){
            session.delete(u);
            session.flush();
        }
	
    }
		
	}

