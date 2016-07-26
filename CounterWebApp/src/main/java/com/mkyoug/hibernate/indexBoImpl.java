package com.mkyoug.hibernate;

import com.mkyong.controller.indexvalidator;

public class indexBoImpl implements indexBo{
	
	indexDao indexDao;
	
	public void setindexDao(indexDao indexDao) {
		this.indexDao = indexDao;
	}

	public void save(indexvalidator index){
		indexDao.save(index);
	}
	
	public void update(indexvalidator index){
		indexDao.update(index);
	}
	
	public void delete(indexvalidator index){
		indexDao.delete(index);
	}
	
	public indexvalidator findByindexCode(String Email_id){
		return indexDao.findByindexCode(Email_id);
	}
}