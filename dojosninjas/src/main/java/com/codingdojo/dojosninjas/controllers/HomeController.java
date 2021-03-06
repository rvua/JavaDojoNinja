package com.codingdojo.dojosninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.dojosninjas.models.Dojo;
import com.codingdojo.dojosninjas.models.Ninja;
import com.codingdojo.dojosninjas.services.dojoService;
import com.codingdojo.dojosninjas.services.ninjaService;

@Controller 
public class HomeController {
	
	@Autowired
	dojoService dojoServ;
	private final ninjaService ninjaServ;
	
	public HomeController(ninjaService ninjaServ) {
		this.ninjaServ = ninjaServ;
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("dojos", dojoServ.allDojos());
		model.addAttribute("ninjas", ninjaServ.allNinja());
		return "dashboard.jsp";
	}
	
	// Renders the form to make an dojo
	@RequestMapping("/newDojo")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojo.jsp";
	}
	
	// Makes a method to create dojo
	@RequestMapping("/processDojo")
	public String processDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "newDojo.jsp";
		}
		dojoServ.create(dojo);
		return "redirect:/dashboard";
	}
	
	// methods to make an attendee 
	// one to render the form
	// one to process the action
	
	@RequestMapping("/newNinja")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("allDojos", dojoServ.allDojos());
		return "newNinja.jsp";
	}
	
	@RequestMapping("/processNinja")
	public String processAttend(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			return "newNinja.jsp";
		}
		ninjaServ.create(ninja);
		return "redirect:/dashboard";
	}
	
	// To show an dojo
	@RequestMapping("/oneLocation/{id}")
	public String viewDojo(@PathVariable("id") Long id, Model model) {
		model.addAttribute("dojo", dojoServ.oneDojo(id));
		return "oneLocation.jsp";
	}
}
