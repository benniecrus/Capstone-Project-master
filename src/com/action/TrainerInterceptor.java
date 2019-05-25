package com.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class TrainerInterceptor extends AbstractInterceptor implements ServletRequestAware {
	
	private HttpServletRequest request;
	private HttpSession session;
	
	
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> sessionAttributes =
				invocation.getInvocationContext().getSession();
		
		String userRole = (String)sessionAttributes.get("role");
		System.out.println(userRole);
		if(userRole != null && userRole.equals("trainer")){
			return invocation.invoke();
		}
		
		return "error";
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpSession getSession() {
		return session;
	}

	public void setSession(HttpSession session) {
		this.session = session;
	}
	
}
