package com.student;

import java.util.Scanner;

import org.json.JSONObject;
import org.springframework.beans.factory.BeanFactory;  
import org.springframework.beans.factory.xml.XmlBeanFactory;  
import org.springframework.core.io.ClassPathResource;  
import org.springframework.core.io.Resource;
import org.springframework.web.bind.annotation.ResponseBody;  
  
public class InsertTest {  
@SuppressWarnings("resource")
@ResponseBody
public static void main(String[] args) {
	int d=1;
	do{
		int c=0;
		try{
			do{
				int a=0;
				Employee e=new Employee();
				Resource r=new ClassPathResource("com/student/applicationContext.xml");  
				BeanFactory factory=new XmlBeanFactory(r);
				EmployeeDao dao=(EmployeeDao)factory.getBean("d");
				Scanner n = new Scanner(System.in);
				try{
					System.out.println("Welcome to new employee");
					System.out.println("1. insert the record");
					System.out.println("2. delete the record");	
					System.out.println("3. display the record");
					c= n.nextInt();
					}
	catch (Exception g) {
		System.out.println("enter differ options");
	}	
		try{
		switch (c) {
	
		case 1:   
				      float b;
				      String s;
				      Scanner in = new Scanner(System.in);
				      System.out.println("Enter the name of employee");
				      s = in.nextLine();
				      System.out.println("Enter a id");
				      a = in.nextInt();
				      System.out.println("Enter employee salary");
				      b = in.nextFloat(); 	     
				      e.setId(a);  
				      e.setName(s);  
				      e.setSalary(b);  
				      dao.saveEmployee(e);
				      break;

		case 2:
					System.out.println("enter the id to which you want to delete the record");
					System.out.println("Enter a id");
					a = n.nextInt();
					e.setId(a);
					dao.deleteEmployee(e);
					break;
		case 3:
					System.out.println("enter the id u want enter");
					a=n.nextInt();
					Employee e43 =dao.getById(a);
					int a1 =e43.getId();
					String s1=e43.getName();
					float f=e43.getSalary();
					System.out.println("id="+a1+"name"+s1+"salary="+f);
					
					JSONObject obj = new JSONObject();

				      obj.put("id",e43.getId());
				      obj.put("name", e43.getName());
				      obj.put("salary",e43.getSalary());

				      System.out.print(obj);
				   
					break;
		
		default:
					System.out.println("enter another entery");
					break;
				}
			}
		 catch (Exception f) {
		    	 System.out.println("Sorry we can't insert this value \n try another id as it is unique");
		 					 }
		
				System.out.println("want to enter again if yes press 1");
				d= n.nextInt();
    			}while(d==1);
	
			}catch (Exception e2) {
									}  
		}while(d==1); 	
	}
}	 
