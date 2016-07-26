package daoimplementation;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.Cart;

@Repository
public class CartDAOImpl {
	@Autowired
	private SessionFactory sessionFactory;
	
	public CartDAOImpl()
	{
		
	}
    
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }
    
    public void addCart(Cart p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(p);
        
    }
   
    public void updateCart(Cart p) {
       Session session = this.sessionFactory.getCurrentSession();
       session.update(p);
      
    }
    
    public List<Cart> listCarts() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Cart> cartsList = session.createQuery("from Carts").list();
        return cartsList;
    }
    
    public Cart getCartById(int id) {
        Session session = this.sessionFactory.getCurrentSession();      
        Cart p = (Cart) session.load(Cart.class, new Integer(id));
        
        return p;
    }
    @Transactional
    public void removeCart(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Cart p = (Cart) session.load(Cart.class, new Integer(id));
        if(null != p){
            session.delete(p);
            session.flush();
        }
        
    }
}
