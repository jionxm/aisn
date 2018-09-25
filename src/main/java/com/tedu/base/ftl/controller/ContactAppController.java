package com.tedu.base.ftl.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.tedu.base.engine.service.FormService;

/**
 * 
 * @author zhangzhiming
 *
 */
@Controller
@RequestMapping ("/contact-us")
public class ContactAppController {
	
    @Resource
    private FormService formService;
	
	@RequestMapping(value = "")
	public String contactUs(Model model,HttpServletRequest request) { 
		
		return "pc/contact";
	}
	
}
