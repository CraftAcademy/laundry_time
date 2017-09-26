class LaundryRoom < ApplicationRecord
  acts_as_bookable  time_type: :fixed,
                    capacity_type: :closed
end

  acts_as_bookable  time_type: :fixed
                    #capacity_type: :closed

  before_validation :add_schedule

  def add_schedule
    self.schedule = IceCube::Schedule.new
    self.schedule.add_recurrence_rule IceCube::Rule.daily.hour_of_day(8,13)
  end
end

