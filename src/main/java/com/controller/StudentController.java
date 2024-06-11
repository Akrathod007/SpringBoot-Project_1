package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.Userbean;
import com.util.validators;

@Controller
public class StudentController {

	@GetMapping("/boxcricketregistration")
	public String boxRegistraion() {
		return "BoxCricket";
	}
	
	@PostMapping("/savereg")
	public String saveRegistration(Userbean userbean,Model model) {
		System.out.println(userbean.getStudentName());
		System.out.println(userbean.getPlayerType());
		System.out.println(userbean.getFoodPreference());
		System.out.println(userbean.getDrink());
		
		boolean flag = false;
		String alphaRegEx = "[a-zA-Z ]+";
		if(validators.isBlank(userbean.getStudentName())) {
			flag = true;
			model.addAttribute("studentNameErr", "*Please Enter Your Name");
		}
		else if(userbean.getStudentName().matches(alphaRegEx) == false) {
			flag = true;
			model.addAttribute("studentNameErr", "*Please Enter Valid Name");
		}
//		else {
//			model.addAttribute("studentNameValue", userbean.getStudentName());
//		}
		if(userbean.getPlayerType() == null) {
			flag = true;
			model.addAttribute("playerTypeErr", "*Please Select Your Player Type");
		}
//		else {
//			model.addAttribute("playerTypeValue", userbean.getPlayerType());
//		}
		if(userbean.getFoodPreference().equals("-1") == true) {
			flag = true;
			model.addAttribute("foodPreferenceErr", "*Please Select Your Food Prefrence");
		}
//		else {
//			model.addAttribute("foodPreferenceValue", userbean.getFoodPreference());
//		}
		if(userbean.getDrink() == null) {
			flag = true;
			model.addAttribute("drinkErr", "*Please Select Atleat One Dribk");
		}
//		else {
//			model.addAttribute("drinkValue", userbean.getDrink());
//		}
		
		model.addAttribute("reg",userbean);
		
		if(flag) {
			return "BoxCricket";
		}
		else {
			return "RegistarionDetails";
		}
	}
	
}
