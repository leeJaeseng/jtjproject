package com.jtj.MonitoringController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/monitoring")

public class Monitoring {

	@GetMapping("monitoring.do")
	public String monitoring() {
		
		return "monitoring/monitoring";
	}

}
