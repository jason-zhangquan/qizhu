package com.core.tag;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTag;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HelloSimpleTag extends SimpleTagSupport {

	private String value;
	private String count;
	
	public void setValue(String value) {
		this.value = value;
	}
	
	public void setCount(String count) {
		this.count = count;
	}
	
	//标签体逻辑实际应该编写到该方法中. 
	@Override
	public void doTag() throws JspException, IOException {
		
		int a = 0;
		int b = 0;
		
		PageContext pageContext = (PageContext) getJspContext();
		
		JspWriter out = pageContext.getOut();
		
//		System.out.println("value: " + value  + ", count: " + count);
//		
//		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
//		pageContext.getOut().print("Hello: " + request.getParameter("name"));
		
		int c = 0;
		
		c = Integer.parseInt(count);
		for(int i = 0; i < c; i++){
			out.print((i + 1) + ": " + value);
			out.print("<br>");
		}
	}


}
