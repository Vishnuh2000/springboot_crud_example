package com.springbootcrud.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springbootcrud.model.User;

@Repository
public interface UserRepository extends JpaRepository<User,Integer>{

	
	public boolean existsByEmail(String email);
	
	
	public User findByEmailAndPassword(String email , String password);
	
	
}
