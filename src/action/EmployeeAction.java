package action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;
import service.EmployeeService;

public class EmployeeAction extends ActionSupport  implements RequestAware{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private EmployeeService employeeService;
	private Map<String, Object>  request;
	
	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}
	 
	public EmployeeService getEmployeeService() {
		return employeeService;
	}
	
     public String list(){
    	 request.put("employee", employeeService.getAll());
    	 return "list";
     }

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}
}
