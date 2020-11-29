package com.spring.sample.web.cmms.service;

import java.util.HashMap;
import java.util.List;

public interface iCmmsService {

	public List<HashMap<String, String>> getLangugList() throws Throwable;

	public List<HashMap<String, String>> langugChange(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> loginCheck(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> homeLangugChange(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> treeload() throws Throwable;

}
