class UsersController < ApplicationController
  

    def show
        user = User.find(params[:id])
        render json: user

    end

    def chefs_index 
        chefs = User.all.select{|user| user.is_chef == true}
        render json: chefs.as_json(include: { dishes: {except: [:created_at, :updated_at]}}, except: [:created_at, :updated_at])
    end

    def user_events
        user = User.find(params[:user_id])
        events = Event.all.where(customer_id: user.id)
        render json: events.as_json(include: {chef: {only: [:name] }}, except: [:created_at, :updated_at])
    end

end
