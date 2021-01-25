package com.food.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.food.dao.FoodDaoImplementation;
import com.food.pojo.Food;

@MultipartConfig
@WebServlet("/FoodServlet")
public class FoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FoodDaoImplementation foodDaoImpl = new FoodDaoImplementation();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean flag;
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		List<Food> foodList = new ArrayList<>();
		
		String action = request.getParameter("action");
		
		if(action != null && action.equals("delete")) {
			int foodId = Integer.parseInt(request.getParameter("id"));
			flag = foodDaoImpl.deleteFood(foodId);
			
			if(flag == true) {
				foodList = foodDaoImpl.showAllFood();
				session.setAttribute("flist", foodList);
				response.sendRedirect("FoodList.jsp");
			}
			else {
				request.setAttribute("status", "Food not deleted");
				RequestDispatcher rd = request.getRequestDispatcher("FoodList.jsp");
				rd.include(request, response);
			}
		}
		else if(action != null && action.equals("update")) {
			int foodId = Integer.parseInt(request.getParameter("id"));
			Food food = foodDaoImpl.searchFoodById(foodId);
			
			session.setAttribute("food", food);
			response.sendRedirect("UpdateFood.jsp");
		}
		else {
			foodList = foodDaoImpl.showAllFood();
			session.setAttribute("flist", foodList);
			response.sendRedirect("FoodList.jsp");
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String foodName, foodCategory;
		double foodPrice;
		boolean flag;
		int foodId;
		InputStream foodImage;
		Part part;
		HttpSession session = request.getSession();
		
		List<Food> foodList = new ArrayList<>();
		
		String action = request.getParameter("action");
		
		if(action != null && action.equals("addFood")) {
			foodName = request.getParameter("foodname");
			foodCategory = request.getParameter("foodcat");
			//foodImage = request.getParameter("foodimage");
			foodPrice = Double.parseDouble(request.getParameter("foodprice"));
			
			part = request.getPart("foodimage");
			foodImage = part.getInputStream();
			
			Food food = new Food(foodName, foodCategory, foodPrice);
			food.setFoodImage(foodImage);
			flag = foodDaoImpl.addFood(food);
			
			if(flag == true) {
				//System.out.println("Added Successfully");
				foodList = foodDaoImpl.showAllFood();
				session.setAttribute("flist", foodList);
				response.sendRedirect("FoodList.jsp");
			}
			else
				request.setAttribute("status", "Food not added");
				RequestDispatcher rd = request.getRequestDispatcher("FoodList.jsp");
				rd.include(request,response);
				//out.print("Failed");
		}
		else if(action != null && action.equals("updateFood")) {
			foodId = Integer.parseInt(request.getParameter("foodid"));
			foodName = request.getParameter("foodname");
			foodCategory = request.getParameter("foodcat");
			//foodImage = request.getParameter("foodimage");
			foodPrice = Double.parseDouble(request.getParameter("foodprice"));
			
			part = request.getPart("foodimage");
			
			 if(part.getSize() != 0 && part != null) { 
				 foodImage = part.getInputStream();
			 } else { 
				 Food f = foodDaoImpl.searchFoodById(foodId); 
				 foodImage = f.getFoodImage(); 
				 }
			 
			//foodImage = part.getInputStream();
			
			Food food = new Food(foodId, foodName, foodCategory, foodPrice);
			food.setFoodImage(foodImage);
			flag = foodDaoImpl.updateFood(food);
			
			if(flag == true) {
				foodList = foodDaoImpl.showAllFood();
				session.setAttribute("flist", foodList);
				response.sendRedirect("FoodList.jsp");
			}
			else
				request.setAttribute("status", "Food not updated");
			RequestDispatcher rd = request.getRequestDispatcher("FoodList.jsp");
			rd.include(request,response);
		}
	}
	

}
