package szakdolgozat.tothroland.tyre.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import szakdolgozat.tothroland.tyre.entity.Tire;

public interface GraphRepository extends JpaRepository<Tire, Integer>{
		
}
