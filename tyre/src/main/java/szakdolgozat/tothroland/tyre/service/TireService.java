package szakdolgozat.tothroland.tyre.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import szakdolgozat.tothroland.tyre.entity.Tire;
import szakdolgozat.tothroland.tyre.repository.TireRepository;

@Service
public class TireService {
	
	@Autowired
	private TireRepository tr;

	public List<Tire> getAll() {
		return tr.findAll();
	}

	public void saveTire(Tire tireObj) {
		tr.save(tireObj);	
	}

	public Tire getTire(Long id) {
		return tr.getOne(id);
	}

	public void deleteTire(Tire tireObj) {
		tr.delete(tireObj);
		
	}

	public Object getAllNyari() {
		return tr.findByCategoryId((int) -1);
	}

	public Object getAllTeli() {
		return tr.findByCategoryId((int) -2);
	}

	public Object getAllNegyevszakos() {
		return tr.findByCategoryId((int) -3);
	}

	
}
