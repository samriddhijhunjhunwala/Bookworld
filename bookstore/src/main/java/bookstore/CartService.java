package bookstore;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import daoimplementation.CartDAOImpl;
import model.Cart;

public class CartService {
	@Autowired
	private CartDAOImpl cdi;
	
	@Transactional
    public void addCart(Cart p) {
        this.cdi.addCart(p);
    }
	
	@Transactional
    public void updateCart(Cart p) {
        this.cdi.updateCart(p);
    }
	
	@Transactional
    public List<Cart> listPersons() {
        return this.cdi.listCarts();
    }
	
	@Transactional
    public Cart getPersonById(int id) {
        return this.cdi.getCartById(id);
    }
	
	@Transactional
    public void removeCart(int id) {
        this.cdi.removeCart(id);
    }
}
