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
    current_user.book! room, time: slot_to_book
  end
end