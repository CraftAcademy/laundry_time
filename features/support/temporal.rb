require 'timecop'

module Temporal

  def travel_to(time, &block)
    Timecop.travel parse_time(time), &block
  end

  def freeze_time_at(time, &block)
    Timecop.freeze parse_time(time), &block
  end

  private

  def parse_time(time)
    zone = ActiveSupport::TimeZone.new('Stockholm')
    ActiveSupport::TimeZone[zone.name].parse(time)
  end
end