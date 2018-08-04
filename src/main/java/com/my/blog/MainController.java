package com.my.blog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.blog.service.MemberService;



@Controller
public class MainController {
	@Autowired
	MemberService ms;
	@RequestMapping("/main")
	public String main() {
		System.out.println(ms);
		return "main";
	}
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "loginForm";
	}
}
