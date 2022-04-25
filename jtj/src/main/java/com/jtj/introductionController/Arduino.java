package com.jtj.introductionController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/introduction")
public class Arduino {
	
	@GetMapping("/Arduino.do")
	public String getArduino() {
		
		return "introduction/Arduino";
	}

}
