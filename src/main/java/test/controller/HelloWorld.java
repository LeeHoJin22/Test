package main.java.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorld {
	
//	@RequestMapping(value="/i*.html")
//	public String index(ModelMap modelmap, HttpSession session, HttpServletRequest req, HttpServletResponse res){
//		modelmap.addAttribute("Data", "Index");
//		return "index";
//	}
	
	
//	@RequestMapping(value="h*.html")
//	public String helloworld(ModelMap modelmap, HttpSession session, HttpServletRequest req, HttpServletResponse res){
//		modelmap.addAttribute("Data2", "HelloWorld!");
//		return "hello"; 
//	}
	
//	@RequestMapping(value="{id}.html")
//	public String id(@PathVariable String id,ModelMap model, HttpSession session, HttpServletRequest req, HttpServletResponse res){
//		model.addAttribute("Data2", id + " page");
//		return "hello";
//	}
	
//	@RequestMapping(value="{id}.html", method = RequestMethod.GET)
//	public String index1(@PathVariable String id,ModelMap model, HttpSession session, HttpServletRequest req, HttpServletResponse res){
//		model.addAttribute("Data2", id + " page");
//		return "hello";
//	}

//	@RequestMapping(value="{id}.html", method = RequestMethod.POST)
//	public String index2(@PathVariable String id,ModelMap model, HttpSession session, HttpServletRequest req, HttpServletResponse res){
//		model.addAttribute("Data2", id + " page");
//		return "hello";
//	}
	
	@RequestMapping(value = "index.html", params = { "param1" }, method = RequestMethod.GET)
	public String index1(@RequestParam("param1") String param, ModelMap modelmap, HttpSession session, HttpServletRequest req, HttpServletResponse res){
		modelmap.addAttribute("Data", "parameter - " + param);
		return "index";
	}
	
	@RequestMapping(value = "index.html",  method = RequestMethod.GET)
	public String index2(ModelMap modelmap, HttpSession session, HttpServletRequest req, HttpServletResponse res){
		modelmap.addAttribute("Data", "Hi");
		return "index";
	}
}
