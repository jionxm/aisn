package com.tedu.base.ftl.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tedu.base.common.page.QueryPage;
import com.tedu.base.common.utils.SessionUtils;
import com.tedu.base.engine.service.FormService;
import com.tedu.plugin.workflow.FormSDK;
/**
 * 
 * @author chenjun
 *
 */
@Controller
@RequestMapping ("/content")
public class contentController {
	@Resource
	FormService formService;
	@Resource
	FormSDK formSDK;
	@RequestMapping(value = "/index")
	public String workplace(Model model) {
		Map<String, String> data = new HashMap<>();
		String id =SessionUtils.getUserInfo().getEmpId().toString();
		data.put("id",id);
		model.addAttribute("createBy",id);
		model.addAttribute("assignee",id);	
		List<Map<String,Object>> list = getParams("ftlSql/QryName", "eq_id", id);
		String name=list.get(0).toString();
		name=name.substring(6,name.indexOf("}"));
		model.addAttribute("assigneeName", name);
		//查询分配给我的工作项
		Map<String,Object> map1=formSDK.formDealQuery("ftlSql/Qrywork1",data, 1, null);
		model.addAttribute("work1",map1);
		//查询我发起的工作项
		Map<String,Object> map2=formSDK.formDealQuery("ftlSql/Qrywork2", data, 1, null);
		model.addAttribute("work2",map2);
		//查询我的测试设计任务
		Map<String,Object> map3=formSDK.formDealQuery("ftlSql/Qrywork3", data, 1, null);
		model.addAttribute("work3",map3);
		//查询分配给我测试的工作项
		Map<String,Object> map4=formSDK.formDealQuery("ftlSql/Qrywork4", data, 1, null);
		model.addAttribute("work4",map4);
		//查询系统公告
		Map<String,Object> announcementMap=formSDK.formDealQuery("ftlSql/Qryannouncement",null, 1, 5);
		model.addAttribute("announcement",announcementMap);
		//查询项目动态
		Map<String,Object> issueLogMap=formSDK.formDealQuery("ftlSql/QryissueLog",null, 1,5);
		model.addAttribute("issueLog",issueLogMap);
		List<Map<String, Object>> list2 = (List<Map<String, Object>>) issueLogMap.get("list");
		for (Map<String, Object> map : list2) {
			String title = (String) map.get("title");
			String log=(String)map.get("log");
			String tl=log+"；"+title;
			String tl2=tl.replace("<br/>","");
			tl2=tl2.replace("：","");
			if(tl2.length()<=25){
				map.put("list2", tl2);
			}else{
				String tl3=tl2.substring(0,25);
				map.put("list2",tl3);
			}
		}
		model.addAttribute("from", "menu");
		model.addAttribute("code","25");
		return "pc/content";
	}	
	public List<Map<String, Object>> getParams(String url, String eq, String area) {
		QueryPage queryPage = new QueryPage();
		Map<String, Object> mapParam = new HashMap<>();
		mapParam.put(eq, area);
		queryPage.setParamsByMap(mapParam);
		queryPage.setQueryParam(url);
		// 查询人员并替换新旧表单相关人员信息(姓名)
		List<Map<String, Object>> list = formService.queryBySqlId(queryPage);
		return list;
	}
}
