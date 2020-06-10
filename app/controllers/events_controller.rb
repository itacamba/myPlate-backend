class EventsController < ApplicationController
    def index
        render json: Event.all
    end
    def show
        event = Event.find(params[:id])
        render json: event
    end
    def create
        date = params[:date] #format [M, "dd", "yyyy"] - seeds => date format (yyyy,mm,dd)
        event = Event.create(ocassion: params[:ocassion], party_size: params[:party_size], date: Date.new(date[2].to_i,date[0],date[1].to_i), dish_name: params[:dish_name], chef_id: params[:chef_id], customer_id: params[:customer_id])
        render json: event
    end
    def update
        #byebug
        event = Event.find(params[:id])
        event.update(isApproved: params[:is_approved])
        event.save
        render json: event
    end
end
