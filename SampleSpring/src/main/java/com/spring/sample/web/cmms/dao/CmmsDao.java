package com.spring.sample.web.cmms.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CmmsDao implements iCmmsDao{

	@Autowired
	public SqlSession sqlSession;

	@Override
	public List<HashMap<String, String>> getLangugList() throws Throwable{
		return sqlSession.selectList("cmms.getLangugList");
	}

	@Override
	public List<HashMap<String, String>> langugChange(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("cmms.langugChange", params);
	}

	@Override
	public HashMap<String, String> loginCheck(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("cmms.loginCheck", params);
	}

	@Override
	public List<HashMap<String, String>> homeLangugChange(HashMap<String, String> params) throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("cmms.homeLangugChange", params);
	}

	@Override
	public List<HashMap<String, String>> treeload() throws Throwable {
		// TODO Auto-generated method stub
		return sqlSession.selectList("cmms.treeload");
	}
	
}
