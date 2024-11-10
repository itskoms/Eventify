class EventsController < ApplicationController
    # before_action :authorize_guest!, only: [:show]
    # before_action :authorize_organizer!, except: [:show]
    before_action :set_event, only: [:show, :edit, :update, :destroy]

    def index
        @events = Event.all
    end 

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.create(event_params) 
      
        if @event.persisted?  
          Rails.logger.info "Event created successfully! ID: #{@event.id}"
          redirect_to @event, notice: 'Event was successfully created'
        else
          Rails.logger.error "Failed to create event. Errors: #{@event.errors.full_messages.join(", ")}"
          
          flash.now[:alert] = "Failed to create event: #{@event.errors.full_messages.join(", ")}"
          render :new  
        end
      end
      
    def edit
        @event
    end 

    def update 
        if @event.update(event_params)
            redirect_to @event, notice: 'Event was successfully updated.'
         else
            render :edit
        end
    end

    def destroy
        @event.destroy!
         redirect_to events_path, notice: 'Event was successfully deleted.'
    rescue ActiveRecord::RecordNotDestroyed => e
        redirect_to events_path, alert: 'Event could not be deleted: ' + e.message
    end

    private

    def set_event
        @event = Event.find(params[:id])
    end

    def event_params
        params.require(:event).permit(:title, :date, :start_time, :end_time, :location, :description)
    end

    # def authorize_guest!
    #     # Ensure guests can only see the event (show action)
    #     unless guest?
    #       redirect_to events_path, alert: "You don't have permission to access this page."
    #     end
    #   end
    
    # def authorize_organizer!
    # # Ensure only organizers can access new, edit, update, destroy actions
    #     unless organizer?
    #     redirect_to events_path, alert: "You must be an organizer to perform this action."
    #     end
    # end
end
