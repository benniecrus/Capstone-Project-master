package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bean.Category;
import com.dao.CategoryDAO;
import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction extends ActionSupport implements ServletRequestAware {
	
	private HttpServletRequest request;
	private List<Category> categories;
	private CategoryDAO categorydao = new CategoryDAO();
	
	
	public String initCategory() throws Exception{
		
		categories = categorydao.getAllCategory();
		
		return SUCCESS;
	}
	
	public String getTotalViewCategory() throws Exception{
		
		categorydao.getTotalViewCourse();
		
		return SUCCESS;
	}
	
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public CategoryDAO getCategorydao() {
		return categorydao;
	}

	public void setCategorydao(CategoryDAO categorydao) {
		this.categorydao = categorydao;
	}
	
	
	
}
