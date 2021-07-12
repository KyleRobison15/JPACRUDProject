package com.skilldistillery.climbs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.climbs.data.ClimbDAO;
import com.skilldistillery.climbs.entities.Climb;

@Controller
public class ClimbController {
	
	@Autowired
	private ClimbDAO dao;
	
	@RequestMapping(path = {"/","index.do"})
	public String index(Model model) {
//		model.addAttribute("climb", dao.findById(1)); // Injected a model, hardcoded a 1 for id - Just for testing the controller and jsp files
		return"index";
	}
	
	@RequestMapping("home.do")
	public String home() {
		return"home";
	}
	
	@RequestMapping("getClimbs.do")
	public String getClimbs(Model model) {		
		model.addAttribute("climbs", dao.getAllClimbs());
		return"showClimbs";
	}
	
	@RequestMapping(path = "getClimbs.do", params = "keyword")
	public String getClimbs(String keyword, Model model) {		
		model.addAttribute("climbs", dao.findByKeyword(keyword));
		return"showClimbs";
	}
	
	@RequestMapping(path = "getCompletedClimbs.do")
	public String getCompletedClimbs(Model model) {		
		model.addAttribute("climbs", dao.getCompletedClimbs());
		return"showClimbs";
	}
	
	@RequestMapping(path = "getToDoClimbs.do")
	public String getToDoClimbs(Model model) {		
		model.addAttribute("climbs", dao.getToDoClimbs());
		return"showClimbs";
	}
	
	@RequestMapping("getClimbById.do")
	public String findClimbById(int id, Model model) {
		model.addAttribute("climb", dao.findById(id));
		return"displayClimb";
	}
	
	@RequestMapping("addForm.do")
	public String showAddForm() {
		return"addClimb";
	}
	
	@RequestMapping(path = "addClimb.do", method = RequestMethod.POST)
	public String addClimb(Climb climb, RedirectAttributes redir) {
		dao.addClimb(climb);
		redir.addFlashAttribute("climb", climb);
		return"redirect:climbAdded.do";
	}
	
	@RequestMapping(path = "climbAdded.do", method = RequestMethod.GET)
	public String confirmAdd(Climb climb) {
		return"addConfirmed";
	}
	
	@RequestMapping(path = "updateForm.do", params = "id", method = RequestMethod.GET)
	public String updateClimb(int id, Model model) {
		Climb existingClimb = dao.findById(id);
		model.addAttribute("climb", existingClimb);
		return"updateClimb";
	}
	
	@RequestMapping(path = "updateClimb.do", method = RequestMethod.POST)
	public String updateClimb(Climb climb, Model model, RedirectAttributes redir) {
		dao.updateClimb(climb);
		redir.addFlashAttribute("climb", climb);
		return"redirect:updateConfirmed.do";
	}
	
	@RequestMapping(path = "updateConfirmed.do", method = RequestMethod.GET)
	public String confirmUpdate(Climb climb) {
		return"updateConfirmed";
	}
	
	@RequestMapping(path = "deleteClimb.do", params = "id", method = RequestMethod.GET)
	public String deleteClimbConfirmation(int id, Model model) {
		Climb existingClimb = dao.findById(id);
		model.addAttribute("climb", existingClimb);
		return"confirmDelete";
	}
	
	@RequestMapping(path = "confirmDelete.do", method = RequestMethod.POST)
	public String deleteClimb(int id, Model model) {
		Climb existingClimb = dao.findById(id);
		dao.deleteClimb(existingClimb);
		return"deleteSuccessful";
	}
	
}
