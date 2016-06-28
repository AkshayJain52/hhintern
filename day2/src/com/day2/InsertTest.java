package com.day2;

	import org.springframework.beans.factory.BeanFactory;  
	import org.springframework.beans.factory.xml.XmlBeanFactory;  
	import org.springframework.core.io.ClassPathResource;  
	import org.springframework.core.io.Resource;  
	  
	public class InsertTest {  
	public static void main(String[] args) {  
	      
	    Resource r=new ClassPathResource("com/day2/applicationContext.xml");  
	    BeanFactory factory=new XmlBeanFactory(r);  
	      
	    SspringDao dao=(SspringDao)factory.getBean("d");  
	      
	    Sspring e=new Sspring();  
	    e.setId(2);  
	    e.setName('v');   
	      
	    dao.saveSspring(e);  
	      
	}  
}
