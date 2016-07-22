/*package com.mkyong.hibernate;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.mkyong.controller.indexvalidator;

public class indexDaoImpl extends HibernateDaoSupport implements indexDao{
	
	public void save(indexvalidator indexvalidator){
		getHibernateTemplate().save(indexvalidator);
	}
	
	public void update(indexvalidator indexvalidator){
		getHibernateTemplate().update(indexvalidator);
	}
	
	public void delete(indexvalidator indexvalidator){
		getHibernateTemplate().delete(indexvalidator);
	}
	
	public indexvalidator findByindexvalidatorCode(String indexvalidatorCode){
		List<?> list = getHibernateTemplate().find(
                      "from indexvalidator where indexvalidatorCode=?",indexvalidatorCode
                );
		return (indexvalidator)list.get(0);
	}

	@Override
	public indexvalidator findByindexCode(String indexCode) {
		// TODO Auto-generated method stub
		return null;
	}


}
*/