package com.day2;

import java.util.*;

import org.springframework.orm.hibernate3.HibernateTemplate;

public class SspringDao {
	HibernateTemplate template;  
	public void setTemplate(HibernateTemplate template) {  
	    this.template = template;  
	}    
	public void saveSspring(Sspring e){  
	    template.save(e);  
	}    
	public void updateSspring(Sspring e){  
	    template.update(e);  
	}    
	public void deleteSspring(Sspring e){  
	    template.delete(e);  
	}  
	public Sspring getById(int id){  
	    Sspring e=(Sspring)template.get(Sspring.class,id);  
	    return e;  
	}  
	@SuppressWarnings("unchecked")
	public List<Sspring> getSsprings(){  
	    List<Sspring> list=new ArrayList<Sspring>();  
	    list=template.loadAll(Sspring.class);  
	    return list;  
	}  
	}  

