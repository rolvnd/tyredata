package szakdolgozat.tothroland.tyre.service;


import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import szakdolgozat.tothroland.tyre.entity.User;
import szakdolgozat.tothroland.tyre.repository.UserRepository;


@Service
@Transactional
public class UserService {
	
	@Autowired
	private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}
	
	public void saveMyUser(User user) {
		userRepository.save(user);
	}
	
	public List<User> showAllUsers(){
		List<User> users = new ArrayList<User>();
		for(User user : userRepository.findAll()) {
			users.add(user);
		}
		
		return users;
	}
	
	public void deleteMyUser(Long id) {
		userRepository.deleteById(id);
	}
	
	public User editMyUser(Long id) {
	    return userRepository.getOne(id);
	}
	
	public User findByUsernameAndPassword(String username, String password) {
		return userRepository.findByUsernameAndPassword(username, password);
	}
	
	}
