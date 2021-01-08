package main.java.test.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.test.service.TestService;

@Controller
public class TestController {
	
	@Resource(name="TestService")
	TestService testService;
	
	@RequestMapping(value="/test")
	public String test() {
		return "index";
	}
	
	@RequestMapping(value="/test/select")
	@ResponseBody
	public String select(Model model, HttpServletRequest request){
		return testService.select();
	}
}