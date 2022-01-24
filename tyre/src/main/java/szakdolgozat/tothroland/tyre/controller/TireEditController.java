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
public class TireEditController {

	@Autowired
	private TireService ts;
	
	@GetMapping("/tire/edit/{id}")
	public String viewEditTire(Model model, @PathVariable("id") Long id) {
		model.addAttribute("tire", ts.getTire(id));
		return "edittire";
	}
	
	@PostMapping("/tire/edit/{id}")
	public String editTire(Tire tireObj) {
		ts.saveTire(tireObj);
		return "redirect:/tire/list";
	}
}
