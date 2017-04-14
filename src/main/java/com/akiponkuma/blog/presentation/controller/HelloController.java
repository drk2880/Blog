package com.akiponkuma.blog.presentation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping("/blog")
	public String blog(){
		return "blog";
	}
	
	@RequestMapping("/hello")
	public String index(Model model) {
		model.addAttribute("name", "SpringBlog from Millky");
		return "hello";
	}
	
	@RequestMapping("/")
	public String index(){
		return "index";
	}
}