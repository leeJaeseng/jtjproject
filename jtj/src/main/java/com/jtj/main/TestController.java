package com.jtj.main;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jtj.bean.TestBean;
import com.jtj.sevice.TestService;

@Controller

public class TestController {

	@Inject

	TestService service;

	

	@RequestMapping(value="/test",method = RequestMethod.GET)

	public String test(Model model) throws Exception {

		List<TestBean> list;		

		list = service.test();	

		model.addAttribute("list",list);	

		

		return "test";

	}

}

