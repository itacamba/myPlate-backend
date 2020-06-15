class DishesController < ApplicationController
    
    def index
        render  json: Dish.all
    end

    def show
        dish = Dish.find(params[:id])
        render json: dish
    end

    def create
        dish = Dish.create(user_id: params[:user_id], name: params[:name], cuisine: params[:cuisine], description: params[:description], img: params[:img])
        render json: dish
    end

    def update
        dish = Dish.find(params[:id])
        dish.update(name: params[:name], cuisine: params[:cuisine], img: params[:img], description: params[:description])
        dish.save
        render json: dish
    end
    
    def destroy
        dish = Dish.find(params[:id])
        dish.destroy
    end
    
    def chef_dishes
        chef= User.find(params[:user_id])
        render json: chef.dishes
    end
   
end
