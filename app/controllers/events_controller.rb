class EventsController < ApplicationController
    def index
        render json: Event.all
    end
    def create
        date = params[:date] #format [M, "dd", "yyyy"] - seeds => date format (yyyy,mm,dd)
        event = Event.create(ocassion: params[:ocassion], party_size: params[:party_size], date: Date.new(date[2].to_i,date[0],date[1].to_i), dish_id: params[:dish_id], chef_id: params[:chef_id], customer_id: params[:customer_id])
        render json: event
    end
end
