class LaundryRoomsController < ApplicationController
  before_action :authenticate_user!, only: [:create_booking]

  def index
    @laundry_rooms = LaundryRoom.all  #TODO Support for multiple laundry rooms
  end

  def create_booking
    room = LaundryRoom.find(params[:laundry_room_id])
    slot = Time.zone.parse(params[:time])
    slot_to_book = room.schedule
                       .occurrences(3.week.from_now)
                       .detect { |occ| occ.beginning_of_hour.localtime == slot.localtime }
    active_booking = current_user.bookings.find_all{ |booking| booking[:time] > (DateTime.now - 5.hours) }
    if active_booking.length < 2
      begin
        current_user.book! room, time: slot_to_book, amount: 1
        flash[:notice] = "You have a booking #{slot.to_formatted_s(:short)}. Smell the rainbows!"
        redirect_to root_path
    rescue ActsAsBookable::AvailabilityError => error
      redirect_to root_path, notice: error.message.underscore.humanize
      end
    else
      flash[:alert] = 'You may only have two active bookings.'
      redirect_to root_path
    end
  end

  def delete_booking
    active_booking = current_user.bookings.detect { |booking| booking.time == Time.zone.parse(params[:time]) }
    active_booking.delete
    flash[:notice] = 'You have successfully cancelled your booking.'
    redirect_to root_path
  end
end