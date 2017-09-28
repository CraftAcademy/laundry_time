class LaundryRoomsController < ApplicationController
  def index
    @laundry_rooms = LaundryRoom.all
  end
end