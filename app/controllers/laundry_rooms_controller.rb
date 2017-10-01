class LaundryRoomsController < ApplicationController
  before_action :authenticate_user!, only: [:create_booking]

  def index
    @laundry_rooms = LaundryRoom.all
  end

  def create_booking
    room = LaundryRoom.find(params[:laundry_room_id])
    slot = Time.zone.parse(params[:time])
    slot_to_book = room.schedule
                       .occurrences(1.week.from_now)
                       .detect { |occ| occ.beginning_of_hour.localtime == slot.localtime }
    begin
      current_user.book! room, time: slot_to_book, amount: 1
      redirect_to root_path
      flash[:notice] = "You have a booking #{slot.to_formatted_s(:short)}. Smell the rainbows!"
    rescue ActsAsBookable::AvailabilityError => error
      redirect_to root_path, notice: error.message.underscore.humanize
    end
  end
end