package szakdolgozat.tothroland.tyre.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import szakdolgozat.tothroland.tyre.service.TireService;

@Controller
public class TireTeliController {
	
		@Autowired
		private TireService ts;
		
		@GetMapping("/tire/teli")
		public String viewAllTeli(Model model) {
			model.addAttribute("tires", ts.getAllTeli());
			return "listteli";
		}

}