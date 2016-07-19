package com.resume.hibernate;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.resume.validator.indexvalidator;


public class indexvalidatorDao {
	HibernateTemplate template;  
	public void setTemplate(HibernateTemplate template) {  
	    this.template = template;  
	}  
	//method to save indexvalidator  
	public void saveindexvalidator(indexvalidator e){  
	    template.save(e);  
	}  
	//method to update indexvalidator  
	public void updateindexvalidator(indexvalidator e){  
	    template.update(e);  
	}  
	//method to delete indexvalidator  
	public void deleteindexvalidator(indexvalidator e){  
	    template.delete(e);  
	}  
	//method to return one indexvalidator of given id  
	public indexvalidator getById(int id){  
	    indexvalidator e=(indexvalidator)template.get(indexvalidator.class,id);  
	    return e;  
	}
	public void displayindexvalidator(int id){  
	    template.find("Select * from emp558",id);  
	}
	//method to return all indexvalidators  
	
	public List<indexvalidator> getindexvalidators(){  
	    List<indexvalidator> list=new ArrayList<indexvalidator>();  
	    list=template.loadAll(indexvalidator.class);  
	    return list;  
	}  
}
