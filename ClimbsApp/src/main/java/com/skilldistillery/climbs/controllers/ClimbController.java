package com.skilldistillery.climbs.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.climbs.data.ClimbDAO;
import com.skilldistillery.climbs.entities.Climb;

@Controller
public class ClimbController {
	
	@Autowired
	private ClimbDAO dao;
	
	@RequestMapping(path = "/")
	public String index(Model model) {
		model.addAttribute("climb", dao.findById(1)); // Injected a model, hardcoded a 1 for id - Just for testing the controller and jsp files
		return"index";
	}
	
	@RequestMapping(path = "home.do")
	public String home() {
		return"home";
	}
	
	@RequestMapping(path = "getClimbs.do")
	public String getClimbs(Model model) {
		
		List<Climb> climbs = dao.getAllClimbs();
		
		model.addAttribute("climbs", climbs);
		return"showClimbs";
	}
	
	@RequestMapping(path = "getClimbById.do")
	public String findClimbById(int id, Model model) {
		model.addAttribute("climb", dao.findById(id));
		return"displayClimb";
	}
	
	
	

}
