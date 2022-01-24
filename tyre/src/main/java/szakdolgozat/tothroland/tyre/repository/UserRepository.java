package szakdolgozat.tothroland.tyre.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import szakdolgozat.tothroland.tyre.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {	
	
	public User findByUsernameAndPassword(String username, String password);
}