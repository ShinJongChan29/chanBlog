package com.my.blog;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
		
		private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
		@RequestMapping(value="/login",method=RequestMethod.GET)
		public String login(Model model,
				@RequestParam(value="error",required=false)String error,
				@RequestParam(value="logout",required=false)String logout) {
			if(error!=null) {
				model.addAttribute("error","Invalid userId and password!");
			}
			if(logout!=null) {
				model.addAttribute("msg","You've been logged out successfully");
			}
			return "loginForm";
		}
}
