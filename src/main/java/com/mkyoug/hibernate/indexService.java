package com.mkyoug.hibernate;

import java.util.List;

import com.mkyong.controller.indexvalidator;

public interface indexService {

		indexvalidator findById(Integer id);
		
		List<indexvalidator> findAll();

		void saveOrUpdate(indexvalidator indexvalidator);
		
		void delete(int id);

		indexvalidator findById(String string);
		
	}