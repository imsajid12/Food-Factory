package com.food.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.food.dao.FoodDaoImplementation;
import com.food.pojo.Food;

/**
 * Servlet implementation class ImageServlet
 */
@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("image/*");
		
		int foodId = Integer.parseInt(request.getParameter("foodId"));
		Food food = new FoodDaoImplementation().searchFoodById(foodId);
		
		InputStream foodImg = food.getFoodImage();
		OutputStream out = response.getOutputStream();
		
		int i = 0;
		
		while((i = foodImg.read()) != -1) {
			out.write(i);
		}
		foodImg.close();
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
