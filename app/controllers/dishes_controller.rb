class DishesController < ApplicationController
    
    def index
        render  json: Dish.all
    end
    
    def chef_dishes
        chef= User.find(params[:user_id])
        render json: chef.dishes
    end
   
end
