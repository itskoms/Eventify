class GuestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:update_attendance, :destroy]
  
  
  def index

    if params[:event_id]
      @events = Event.find(params[:event_id])
      @guests = @events.guests
    else 
      @events = Event.joins(:guest_lists).where(guest_lists: { guest_id: current_user.id })
    end
  end

  def update_attendance
    guest_list = GuestList.find_by(guest_id: params[:id], event_id: params[:event_id])

    if guest_list && guest_list.update(rsvp_status: params[:attending])
      redirect_to guests_path, notice: 'Attendance updated successfully.'
    else
      redirect_to guests_path, alert: 'Failed to update attendance.'
    end
  end

  def destroy
    guest_list = GuestList.find_by(guest_id: params[:id], event_id: params[:event_id])

    if guest_list
      guest_list.destroy
      redirect_to guests_path, notice: 'Event removed from your dashboard.'
    else
      redirect_to guests_path, alert: 'Failed to remove event.'
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id]) if params[:event_id]
  end
end
