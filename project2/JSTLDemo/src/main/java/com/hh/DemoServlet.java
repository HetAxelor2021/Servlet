package com.hh;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import com.hh.Student;
//import com.sun.tools.javac.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String name= "Hetul";
		
		List<Student> studs = Arrays.asList(new Student(1,"Hetul"),new Student(2,"Hardik"),new Student(3,"Dilip"));
		
		
		Student s = new Student(1 , "Hetul");
		request.setAttribute("students", studs);
		
		
		
//		request.setAttribute("label", name);
		RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
	}
}
