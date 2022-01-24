package szakdolgozat.tothroland.tyre.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import szakdolgozat.tothroland.tyre.entity.Tire;
import szakdolgozat.tothroland.tyre.service.TireService;

@Controller
public class TireListController {
	
	@Autowired
	private TireService ts;
	
	@GetMapping("tire/list")
	public String viewList(Model model) {
		List<Tire> all = ts.getAll();
		
		model.addAttribute("tires", all);
		
		return "tirelist";
	}
}
