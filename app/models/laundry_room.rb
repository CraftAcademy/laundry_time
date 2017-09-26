class LaundryRoom < ApplicationRecord
  acts_as_bookable  time_type: :fixed,
                    capacity_type: :closed,
                    capacity: :integer
end