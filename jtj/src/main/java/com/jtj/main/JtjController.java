package com.jtj.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/jtj")
public class JtjController {
	
	@GetMapping("/main.do")
	public String getMain() {
		
		return "jtj/main";
		
	}

}
