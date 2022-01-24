package szakdolgozat.tothroland.tyre.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import szakdolgozat.tothroland.tyre.entity.Tire;

@Repository
public interface TireRepository extends JpaRepository<Tire, Long>{

	List<Tire> findByCategoryId(Integer integer);

}
