package com.springbootcrud.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbootcrud.model.Student;
import com.springbootcrud.model.User;
import com.springbootcrud.repository.StudentRepository;
import com.springbootcrud.repository.UserRepository;

@Service
public class AppServices {

	
	@Autowired
	private UserRepository userRepository;
	
	
	@Autowired
	private StudentRepository studentRepository;
	
	
	
	
	public Student saveStudent(Student stud) {
		
		return studentRepository.save(stud);
		
	}
	
	
	public List<Student> getAllStudent(){
		
		return studentRepository.findAll();
		
	}
	
	
	public Student getStudentById(int id){
		
		return studentRepository.findById(id).get();
		
	}
	
	public void deleteStudentById(int id) {
		
		studentRepository.deleteById(id);
		
	}
	
	
	public boolean existsByEmail(String email) {
		
		return userRepository.existsByEmail(email);
		
	}
	
	public User saveUserData(User user) {
		
		return userRepository.save(user);
		
	}
	
	public User getByEmailAndPassword(String email, String password) {

		return userRepository.findByEmailAndPassword(email, password);

	}
	
	
}
