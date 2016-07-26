package com.mkyoug.hibernate;


import com.mkyong.controller.indexvalidator;

public interface indexDao {
	
	void save(indexvalidator index);
	void update(indexvalidator index);
	void delete(indexvalidator index);
	indexvalidator findByindexCode(String Email_id);

}