package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Category;
import com.bean.Users;
import com.dao.CategoryDAO;
import com.dao.UserDAO;

public class UserLogin implements ServletRequestAware{
	private HttpServletRequest request;
	private String userName;
	private String password;
	private UserDAO userDAO = new UserDAO();
	private Users user;
	private CategoryDAO categorydao = new CategoryDAO();
	private List<Category> categories;
	
	public String execute() throws Exception
	{
		HttpSession session = request.getSession();
		boolean check = userDAO.checkLogin(userName, password);
		categories = categorydao.getAllCategory();
		
		if(check)
		{
			
			session.setAttribute("usname", userName);
			user = userDAO.getUserByUserName(userName);
			session.setAttribute("usid", user.getUserId());
			session.setAttribute("name", user.getFullName());
			session.setAttribute("status", user.getStatus());
			
			if(user.getTrainers().size()>0)
				session.setAttribute("role", "trainer");

			if(user.getLearners().size()>0)
				session.setAttribute("role", "learner");
			return "success";
		}
		else{
			session.setAttribute("errorLoginMessage", "Email or password is incorrect, Try again!");
			return "error";
		}
			
		
	}
	
	public String logout() throws Exception
	{
		categories = categorydao.getAllCategory();
		HttpSession session = request.getSession();
		session.invalidate();
		return "success";
	}
	
	
	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public CategoryDAO getCategorydao() {
		return categorydao;
	}

	public void setCategorydao(CategoryDAO categorydao) {
		this.categorydao = categorydao;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}


	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}


	
}
