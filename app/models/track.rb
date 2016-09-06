class Track < ActiveRecord::Base

  def total_time_in_sec
    total_time / 1000.0
  end

  def to_s
    name
  end

  def readonly?
    true
  end
end
