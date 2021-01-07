package controller.ajax;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Test {
	@RequestMapping(value = "test.json", method = RequestMethod.GET, produces = {"application/JSON"})
	@ResponseBody
	public String index1(HttpSession session, HttpServletRequest req, HttpServletResponse res){
		return "{\"data\":\"json\"}";
	}
	@RequestMapping(value = "test.json", method = RequestMethod.GET, consumes = {"application/XML"})
	@ResponseBody
	public String index2(HttpSession session, HttpServletRequest req, HttpServletResponse res){
		return "<?xml version=\"1.0\" encoding=\"UTF-8\"?><data>xml</data>";
	}
}
