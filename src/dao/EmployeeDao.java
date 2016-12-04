package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import entity.Employee;

public class EmployeeDao {

	private SessionFactory  sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	public Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}
	
	public List<Employee> getAll(){
		String hsql = " from Employee e left outer join fetch e.department ";
		return getSession().createQuery(hsql).list();
	}
	
}
