package com.springbootcrud.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springbootcrud.model.Message;
import com.springbootcrud.model.Student;
import com.springbootcrud.model.User;
import com.springbootcrud.services.AppServices;

@Controller
public class Appcontroller {

	@Autowired
	private AppServices appServices;
	
	

	@GetMapping("/")
	public String homePage() {

		return "index";

	}
	
	

	@GetMapping("/add-student")
	public String studentForm(Model model) {

		model.addAttribute("student", new Student());
		return "addStudent";

	}
	

	@PostMapping("/add-student")
	public String addStudent(@ModelAttribute("student") Student stud, Model model) {

		Student st = appServices.saveStudent(stud);

		boolean err = false;

		if (st.getId() != 0) {

			model.addAttribute("message", err);

		} else {

			err = true;
			model.addAttribute("error", err);

		}

		return "redirect:/student-list";

	}
	

	@GetMapping("/student-list")
	public String listAllStudents(Model model , HttpSession session) {

		User user = (User) session.getAttribute("user");
		if(user!=null) {
			
			List<Student> studentList = appServices.getAllStudent();

			model.addAttribute("students", studentList);

			return "list";
			
		}else {
			
			return "redirect:/";
		}
		

	}

	@GetMapping("/register")
	public String registerPage(Model model , HttpSession session) {

		
		User user = (User) session.getAttribute("user");
		
		if(user ==null) {
			
			model.addAttribute("user", new User());
			return "user-register";
			
		}else {
			
			return "redirect:/";
		}
		
		

	}

	@GetMapping("/login")
	public String loginPage(Model model , HttpSession session) {

		User user = (User) session.getAttribute("user");
		
		if(user==null) {
			
		model.addAttribute("user", new User());
		
		return "user-login";
		
		}else {
			
			return "redirect:/";
		}

	}

	
	@PostMapping("/user-register")
	public String saveRegistration(@ModelAttribute("user") User u, Model model) {

		try {

			boolean e = appServices.existsByEmail(u.getEmail());

			if (e) {

				model.addAttribute("errorMessage", "User with this email address is already exists ! try another email ");
				return "/user-register";

			} else {

				User user = appServices.saveUserData(u);

				if (user != null) {

					return "user-login";

				} else {

					return "user-register";
				}

			}

		} catch (Exception e) {
			
			System.out.println(e);
			
		}
		return "redirect:/user-register";

}
	
	@PostMapping("/login-user")
	public String loginCheck(Model model ,@ModelAttribute("user") User u , @RequestParam("email") String email , @RequestParam("password") String password , HttpServletRequest request) {
		
		User user = appServices.getByEmailAndPassword(email, password);
		
		model.addAttribute("user",user);
		
		if(user != null) {
			 
			HttpSession session = request.getSession();
			session.setAttribute("user",user);
			return "redirect:/";
			
		}else {
			
			
			model.addAttribute("message","Invalid Username or password");
			return "user-login";
		}
			
		
		
		
	}
	
	@GetMapping(value = "/logout")
	public String Logout(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";

	}
	
	@GetMapping("/edit-student/{id}")
	public String studentById(@PathVariable("id") int id , Model model) {
		Student stud = appServices.getStudentById(id);
		model.addAttribute("student", stud);
		return "edit-student";
	}
	
	@GetMapping("/delete-student/{id}")
	public String deletById(@PathVariable("id") int id , Model model) {
		appServices.deleteStudentById(id);
		return "redirect:/student-list";
	}
	
	
}
