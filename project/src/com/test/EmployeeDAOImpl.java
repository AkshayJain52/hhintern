package com.test;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

public class EmployeeDAOImpl implements EmployeeDao  {
    private SessionFactory sessionFactory;
 
    public EmployeeDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
 
    @Transactional
    @Override
    public List<Employee> list() {
        @SuppressWarnings("unchecked")
        List<Employee> listUser = (List<Employee>) sessionFactory.getCurrentSession()
                .createCriteria(Employee.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
 
        return listUser;
    }
 
}