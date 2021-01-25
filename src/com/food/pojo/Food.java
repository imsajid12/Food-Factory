package com.food.pojo;

import java.io.InputStream;

public class Food {
	private int foodId;
	private String foodName, foodCategory;
	private double foodPrice;
	private InputStream foodImage;
	
	public Food() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Food(String foodName, String foodCategory, double foodPrice) {
		super();
		this.foodName = foodName;
		this.foodCategory = foodCategory;
		this.foodPrice = foodPrice;
		//this.foodImage = foodImage;
	}

	public Food(int foodId, String foodName, String foodCategory, double foodPrice) {
		super();
		this.foodId = foodId;
		this.foodName = foodName;
		this.foodCategory = foodCategory;
		this.foodPrice = foodPrice;
		//this.foodImage = foodImage;
	}

	public int getFoodId() {
		return foodId;
	}

	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public String getFoodCategory() {
		return foodCategory;
	}

	public void setFoodCategory(String foodCategory) {
		this.foodCategory = foodCategory;
	}

	public double getFoodPrice() {
		return foodPrice;
	}

	public void setFoodPrice(double foodPrice) {
		this.foodPrice = foodPrice;
	}
	
	public InputStream getFoodImage() {
		return foodImage;
	}
	
	public void setFoodImage(InputStream foodImage) {
		this.foodImage = foodImage;
	}

	@Override
	public String toString() {
		return "Food [foodId=" + foodId + ", foodName=" + foodName + ", foodCategory=" + foodCategory + ", foodPrice="
				+ foodPrice + "foodImage=" + foodImage + "]";
	}
	
	
	
	
}
