package service;

import java.util.List;
import dao.EmployeeDao;
import entity.Employee;

public class EmployeeService {
	private EmployeeDao employeeDao;
	
	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}
	
	public EmployeeDao getEmployeeDao() {
		return employeeDao;
	}
	
	public List<Employee> getAll(){
		return this.getEmployeeDao().getAll();
	}
}
