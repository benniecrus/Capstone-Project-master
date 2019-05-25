package com.action;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;


public class DocumentImageResult implements Result {
	
	
	public void execute(ActionInvocation invocation) throws Exception{
	ImageAction action = (ImageAction) invocation.getAction();
	HttpServletResponse response = ServletActionContext.getResponse();

	response.setContentType(action.getPdfContentType());
	response.getOutputStream().write(action.getDocumentImage());
	response.getOutputStream().flush();
	
	}
	
	
	
	
}
