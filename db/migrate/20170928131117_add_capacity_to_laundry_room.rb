class AddCapacityToLaundryRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :laundry_rooms, :capacity, :integer, default: 1
  end
end
