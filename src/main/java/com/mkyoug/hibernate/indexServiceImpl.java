package com.mkyoug.hibernate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mkyong.controller.indexvalidator;

@Service("indexService")
	public abstract class indexServiceImpl implements indexService {

		indexDao indexDao;

		@Autowired
		public void setindexvalidatorDao(indexDao indexDao) {
			this.indexDao = indexDao;
		}

		@Override
		public indexvalidator findById(String string) {
			return ((indexServiceImpl) indexDao).findById(string);
		}

		@Override
		public List<indexvalidator> findAll() {
			return ((indexServiceImpl) indexDao).findAll();
		}

		@Override
		public void saveOrUpdate(indexvalidator indexvalidator) {

			if (findById(indexvalidator.getEmail_id())==null) {
				indexDao.save(indexvalidator);
			} else {
				indexDao.update(indexvalidator);
			}

		}

}