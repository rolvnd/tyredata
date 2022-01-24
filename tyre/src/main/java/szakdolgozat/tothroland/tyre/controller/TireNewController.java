package szakdolgozat.tothroland.tyre.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import szakdolgozat.tothroland.tyre.entity.Tire;
import szakdolgozat.tothroland.tyre.service.TireService;

@Controller
public class TireNewController {

	@Autowired
	private TireService ts;
	
	@GetMapping("/tire/new")
	public Object viewNew(Model model) {
		return "newtire";
	}
	
	@PostMapping("tire/new")
	public Object saveNewTire(Tire tireObj) {
		ts.saveTire(tireObj);
		return "redirect:list";
	}
}
