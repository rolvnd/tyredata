package szakdolgozat.tothroland.tyre.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import szakdolgozat.tothroland.tyre.entity.Tire;
import szakdolgozat.tothroland.tyre.repository.GraphRepository;

@Service
public class GraphService {
	
	@Autowired
	private GraphRepository gr;
	
	public Collection<Tire> getAllTires() {
		return gr.findAll();
	}

}
