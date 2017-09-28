class LaundryRoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @laundry_rooms = LaundryRoom.all
  end

  def create_booking
    room = LaundryRoom.find(params[:laundry_room_id])
    slot = Time.parse(params[:time])
    slot_to_book = room.schedule
                       .occurrences(1.week.from_now)
                       .detect { |occ| occ.beginning_of_hour.localtime == slot.localtime }
    binding.pry
    if current_user.book! room, time: slot_to_book
      redirect_to root_path, notice: "You have a booking #{slot.localtime.to_formatted_s(:short)}. Great stuff"
    else
      redirect_to root_path, notice: 'That did not work out....'
    end

  end
end