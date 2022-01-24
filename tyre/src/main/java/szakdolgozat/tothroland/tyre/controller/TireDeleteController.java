package szakdolgozat.tothroland.tyre.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import szakdolgozat.tothroland.tyre.entity.Tire;
import szakdolgozat.tothroland.tyre.service.TireService;

@Controller
public class TireDeleteController {
	
	@Autowired
	private TireService ts;
	
	@GetMapping("tire/delete/{id}")
	public String viewDeleteLoan(Model model, @PathVariable("id") Long id) {
		model.addAttribute("tire", ts.getTire(id));
		return "deletetire";
	}
	
	@PostMapping("/tire/delete/{id}")
	public String deleteTire(Tire tireObj) {
		ts.deleteTire(tireObj);
		return "redirect:/tire/list";
	}
	

}
