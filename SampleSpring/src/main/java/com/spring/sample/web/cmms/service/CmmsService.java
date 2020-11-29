package com.spring.sample.web.cmms.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sample.web.cmms.dao.iCmmsDao;

@Service
public class CmmsService implements iCmmsService {

	@Autowired
	public iCmmsDao iCmmsDao;

	@Override
	public List<HashMap<String, String>> getLangugList() throws Throwable{
		// TODO Auto-generated method stub
		return iCmmsDao.getLangugList();
	}

	@Override
	public List<HashMap<String, String>> langugChange(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iCmmsDao.langugChange(params);
	}

	@Override
	public HashMap<String, String> loginCheck(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iCmmsDao.loginCheck(params);
	}

	@Override
	public List<HashMap<String, String>> homeLangugChange(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return iCmmsDao.homeLangugChange(params);
	}

	@Override
	public List<HashMap<String, String>> treeload() throws Throwable {
		// TODO Auto-generated method stub
		return iCmmsDao.treeload();
	}
	
}
