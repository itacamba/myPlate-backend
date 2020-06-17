class UsersController < ApplicationController
  
    def index
        render json: User.all
    end

    def authenticate #the user hits this route when login In
        user = User.find_by(email: params[:email])
        if( user && user.authenticate(params[:password]))
            payload = {user_id: user.id} 
            token = encode(payload) # this method lives in the application controller, and is possible thanks to the jwt gem

            my_hash = {}  # create a new hash that will include all your user data plus the token
            my_hash["user_data"] = user
            my_hash["token"] = token

            render json: my_hash
        else
            render json: {error_message: "Invalid credentials"}
        end
    end
    
    def decode_token # when the App component Mounts, user hits this route.
        token = request.headers["Authenticate"]
        user = User.find(decode(token)["user_id"]) #this decode() method lives in the Application controller.
        render json: user
    end

    def show
        user = User.find(params[:id])
        render json: user
    end
    def update
        user = User.find(params[:id])
        user.update(name: params[:name], email: params[:email], password_digest: params[:password], cover_img: params[:cover_img], img: params[:img], about: params[:about])
        user.save
        render json: user
    end

    def chefs_index 
        chefs = User.all.select{|user| user.is_chef == true}
        render json: chefs.as_json(include: { dishes: {except: [:created_at, :updated_at]}}, except: [:created_at, :updated_at])
    end

    def user_events #only events for customer_id
        user = User.find(params[:user_id])
        events = Event.all.where(customer_id: user.id)
        render json: events.as_json(include: {chef: {only: [:name] }}, except: [:created_at, :updated_at])
    end
    
    def chef_events #only events for chef_id
        user = User.find(params[:id])
        events = Event.all.where(chef_id: user.id)
        render json: events.as_json(include: {customer: {only: [:name] }}, except: [:created_at, :updated_at])
    end

end
