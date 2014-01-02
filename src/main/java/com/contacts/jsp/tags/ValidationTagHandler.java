package com.contacts.jsp.tags;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.validation.FieldError;

public class ValidationTagHandler extends TagSupport {
	
	private String field;
	private String cssClass;
	private List<FieldError> errors;
	
	@Override
	public int doStartTag() throws JspException {
		
		if (isErrorField()) {
			try {
	            //Get the writer object for output.
	            JspWriter out = pageContext.getOut();
	 
	            //Print the error string out
	            out.println(cssClass);
	 
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
		}
		
        return SKIP_BODY;
	}
	
	private boolean isErrorField() {
		if (errors == null) {
			return false;
		}
		
		for (FieldError err : errors) {
			if (err.getField().equals(field)) {
				return true;
			}
		}
		
		return false;
	}

	public String getCssClass() {
		return cssClass;
	}

	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public List<FieldError> getErrors() {
		return errors;
	}

	public void setErrors(List<FieldError> errors) {
		this.errors = errors;
	}
	
}
