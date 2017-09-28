class AddScheduleToLaundryRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :laundry_rooms, :schedule, :text
  end
end
