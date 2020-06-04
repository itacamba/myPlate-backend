class DishesController < ApplicationController


    #not being used
    def index
        render json: Dish.all.as_json(include: { chef: {except: [:created_at, :updated_at]}}, except: [:chef_id, :created_at, :updated_at])
    end
end
