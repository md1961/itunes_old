class Track < ActiveRecord::Base
  extend ActiveRecordLikeFinders

  def self.all
    @all_instances ||= super
  end

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
