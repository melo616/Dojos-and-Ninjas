package com.codingdojo.dojosandninjas.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.services.DojoService;
import com.codingdojo.dojosandninjas.services.NinjaService;

@Controller
public class MainController {
	@Autowired
	private NinjaService ninjaService;
	@Autowired
	private DojoService dojoService;

	@GetMapping("/")
	public String renderHome(Model model) {
		List<Dojo> dojoList = dojoService.allDojos();
		model.addAttribute("dojoList", dojoList);
		return "home.jsp";
	}
	
	//Create dojo
	//Render create dojo form
	@GetMapping("/dojos/new")
	public String createDojoForm(@ModelAttribute("newDojo") Dojo newDojo) {
		return "newDojo.jsp";
	}
	//Process create dojo form
	@PostMapping("/dojos/new")
	public String processDojoForm(@ModelAttribute("newDojo") Dojo newDojo, BindingResult result) {
	if(result.hasErrors()) {
		return "newDojo.jsp";
	} else {
		dojoService.createDojo(newDojo);
		return "redirect:/";
		}
	}
	
	//show one dojo's ninjas
	@GetMapping("/dojos/{id}")
	public String showDojo(@PathVariable("id")Long id, Model model) {
		model.addAttribute("oneDojo", dojoService.oneDojo(id));
		return "oneDojo.jsp";
	}
	
	//Create ninja
	//Render create ninja form
	@GetMapping("/ninjas/new")
	public String createNinjaForm(@ModelAttribute("newNinja") Ninja newNinja, Model model) {
		List<Dojo> dojoList = dojoService.allDojos();
		model.addAttribute("dojoList", dojoList);
		return "newNinja.jsp";
	}
	//Process create ninja form
	@PostMapping("/ninjas/new")
	public String processNinjaForm(@ModelAttribute("newNinja") Ninja newNinja, BindingResult result) {
	if(result.hasErrors()) {
		return "newNinja.jsp";
	} else {
		ninjaService.createNinja(newNinja);
		return "redirect:/";
		}
	}
}
