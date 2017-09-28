class LaundryRoom < ApplicationRecord
  acts_as_bookable  time_type: :fixed
                    #capacity_type: :closed

  before_validation :add_schedule
  #after_find :add_recurrence_rule

  # def add_recurrence_rule
  #   self.schedule.add_recurrence_rule IceCube::Rule.daily.hour_of_day(8,13)
  # end

  def add_schedule
    self.schedule = IceCube::Schedule.new
    self.schedule.add_recurrence_rule IceCube::Rule.daily.hour_of_day(8,13)
  end
end

