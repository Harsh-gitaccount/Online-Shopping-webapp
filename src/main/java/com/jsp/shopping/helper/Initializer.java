package com.jsp.shopping.helper;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class Initializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class[] configClasses = { ConfigClass.class };
		return configClasses;
	}

	@Override
	protected String[] getServletMappings() {
		String[] urls = { "/" };
		return urls;
	}

}
