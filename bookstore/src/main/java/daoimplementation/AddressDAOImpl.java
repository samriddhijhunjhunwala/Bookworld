package daoimplementation;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import model.Address;

public class AddressDAOImpl {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session  getSession(){
		return sessionFactory.openSession();
	}
	
	@Transactional
	public void saveOrUpdate(Address address){
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(address);
		tx.commit();
	}
}
