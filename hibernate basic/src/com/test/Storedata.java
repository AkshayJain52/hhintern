package com.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Storedata {  
	public static void main(String[] args) {  
	      int count ;
	    //creating configuration object  
	    Configuration cfg=new Configuration();  
	    cfg.configure("com/test/hibernate.cfg.xml");//populates the data of the configuration file  
	      
	    //creating seession factory object  
	    SessionFactory factory=cfg.buildSessionFactory();  
	      
	    //creating session object  
	    Session session=factory.openSession();  
	      
	    //creating transaction object  
	    Transaction t=session.beginTransaction();  
	          
	    Employee e1=new Employee();  
	    count= e1.setId(1111);  
	    e1.setName('s');
	    session.persist(e1);//persisting the object  
	      
	    t.commit();//transaction is committed  
	    session.close();  
	      
	    System.out.println("the data is get inserted the table"+(++count));  
	      
	}  
	}  
