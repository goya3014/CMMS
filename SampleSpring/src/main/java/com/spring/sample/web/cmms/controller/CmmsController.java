package com.spring.sample.web.cmms.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.sample.common.CommonProperties;
import com.spring.sample.util.Utils;
import com.spring.sample.web.cmms.service.iCmmsService;

@Controller
public class CmmsController {

	@Autowired
	public iCmmsService iCmmsService;
	
	@RequestMapping("/template")
	public ModelAndView template(ModelAndView mav) {
		
		
		mav.setViewName("cmms/template");
		return mav;
	}
	
	@RequestMapping("/cmmsPopup")
	public ModelAndView popup(ModelAndView mav) {
		
		
		mav.setViewName("cmms/popup");
		return mav;
	}
	
	@RequestMapping("/login")
	public ModelAndView login(ModelAndView mav) throws Throwable {
		
		
		
		mav.setViewName("cmms/login");
		return mav;
	}
	
	@RequestMapping(value="/langugChangeAjax", method=RequestMethod.POST,produces="text/json;charset=UTF-8")
	
	@ResponseBody
	public String langugChangeAjax(@RequestParam HashMap<String,String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> modelMap = new HashMap<String,Object>();
		
		try {
			
			List<HashMap<String,String>> list = iCmmsService.langugChange(params);
			
			modelMap.put("list", list);
			
			modelMap.put("result","success");
			
		} catch(Throwable e) {
			e.printStackTrace();
			modelMap.put("result", "exception");
		}
		
		return mapper.writeValueAsString(modelMap);
		
	}//langugListAjax end

	
	
	@RequestMapping(value="/loginCheckAjax", method=RequestMethod.POST,produces="text/json;charset=UTF-8")
	
	@ResponseBody
	public String loginCheckAjax(@RequestParam HashMap<String,String> params, HttpSession session) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> modelMap = new HashMap<String,Object>();
		
		try {
			params.put("pw", Utils.encryptAES128(params.get("pw")));
			
			HashMap<String, String> data = iCmmsService.loginCheck(params);
			
			if(data != null && !data.isEmpty()) {
				session.setAttribute("empNo", data.get("EMP_NO"));
				session.setAttribute("positnNo", data.get("EMP_POSITN_ID"));
				modelMap.put("empName", data.get("EMP_NAME"));
				modelMap.put("positnName", data.get("POSITN_NAME"));
				modelMap.put("result","success");
				
			} else {
				modelMap.put("result","fail");
			}
		} catch(Throwable e) {
			e.printStackTrace();
			modelMap.put("result", "exception");
		}
		
		return mapper.writeValueAsString(modelMap);
		
	}//loginCheckAjax end
	
	
	
	
	@RequestMapping("/home")
	public ModelAndView home(ModelAndView mav) {
		
		
		mav.setViewName("cmms/home");
		return mav;
	}
	
	
@RequestMapping(value="/homeLangugChangeAjax", method=RequestMethod.POST,produces="text/json;charset=UTF-8")
	
	@ResponseBody
	public String homeLangugChangeAjax(@RequestParam HashMap<String,String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> modelMap = new HashMap<String,Object>();
		
		try {
			
			List<HashMap<String,String>> list = iCmmsService.homeLangugChange(params);
			
			modelMap.put("list", list);
			modelMap.put("result","success");
			
		} catch(Throwable e) {
			e.printStackTrace();
			modelMap.put("result", "exception");
		}
		
		return mapper.writeValueAsString(modelMap);
		
	}//homeLangugChangeAjax end


@RequestMapping(value="/treeloadAjax", method=RequestMethod.POST,produces="text/json;charset=UTF-8")

@ResponseBody
public String treeloadAjax(@RequestParam HashMap<String,String> params) throws Throwable {
	
	ObjectMapper mapper = new ObjectMapper();
	Map<String,Object> modelMap = new HashMap<String,Object>();
	
	try {
		List<HashMap<String,String>> list = iCmmsService.treeload();
		
		modelMap.put("list", list);
		modelMap.put("result","success");
		
	} catch(Throwable e) {
		e.printStackTrace();
		modelMap.put("result", "exception");
	}
	
	return mapper.writeValueAsString(modelMap);
	
}//treeloadAjax end
	
	
	
	
	
	
	@RequestMapping("/detailLookup")
	public ModelAndView detailLookup(ModelAndView mav) {
		
		
		mav.setViewName("cmms/detailLookup");
		return mav;
	}
	
	@RequestMapping("/langugManagmnt")
	public ModelAndView langugManagmnt(ModelAndView mav) {
		
		
		mav.setViewName("cmms/langugManagmnt");
		return mav;
	}
	@RequestMapping("/codeManagmnt")
	public ModelAndView codeManagmnt(ModelAndView mav) {
		
		
		mav.setViewName("cmms/codeManagmnt");
		return mav;
	}
	
	
	
	
	@RequestMapping("/disposlManagmnt")
	public ModelAndView disposlManagmnt(ModelAndView mav) {
		
		
		mav.setViewName("cmms/disposlManagmnt");
		return mav;
	}
	

	@RequestMapping("/revise")
	public ModelAndView revise(ModelAndView mav) {
		
		
		mav.setViewName("cmms/revise");
		return mav;
	}
	@RequestMapping("/addAsset")
	public ModelAndView addAsset(ModelAndView mav) {
		
		
		mav.setViewName("cmms/addAsset");
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/langugListAjax", method=RequestMethod.POST,produces="text/json;charset=UTF-8")
	
	@ResponseBody
	public String langugListAjax() throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> modelMap = new HashMap<String,Object>();
		
		try {
			
			List<HashMap<String,String>> list = iCmmsService.getLangugList();
			
			modelMap.put("list", list);
			
			modelMap.put("result","success");
			
		} catch(Throwable e) {
			e.printStackTrace();
			modelMap.put("result", "exception");
		}
		
		return mapper.writeValueAsString(modelMap);
		
	}//langugListAjax end


	
	
	
	
	
}
