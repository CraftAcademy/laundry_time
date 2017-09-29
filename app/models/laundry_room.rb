class LaundryRoom < ApplicationRecord
  acts_as_bookable  time_type: :fixed,
                    capacity_type: :closed

  before_validation :add_schedule

  def add_schedule
    self.schedule = IceCube::Schedule.new(Time.now.in_time_zone(Time.zone))
    self.schedule.add_recurrence_rule IceCube::Rule.daily.hour_of_day(8,13)
  end
end

