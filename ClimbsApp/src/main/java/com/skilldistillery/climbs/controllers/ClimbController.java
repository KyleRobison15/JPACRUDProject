package com.skilldistillery.climbs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.climbs.data.ClimbDAO;

@Controller
public class ClimbController {
	
	@Autowired
	private ClimbDAO dao;
	
	@RequestMapping(path = {"/","home.do"})
	public String index(Model model) {
		model.addAttribute("climb", dao.findById(1)); // Injected a model, hardcoded a 1 for id - Just for testing the controller and jsp files
		return"index";
	}
	
	

}
