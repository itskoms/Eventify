class EventsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_event, only: [:show, :edit, :update, :destroy]

    def index
        @events = Event.all
    end 

    def show
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
        if @event.save
            redirect_to @event, notice: 'Event was succesfully created'
        else
            render :new
        end
    end 

    def edit
    end 

    def update 
        if @event.update(event_params)
            redirect_to @event, notice: 'Event was successfully updated.'
         else
            render :edit
        end
    end
end
