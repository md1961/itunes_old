module TracksHelper

  def str_time_in_min_and_sec(millisecond)
    second = (millisecond / 1000.0).round
    '%02d:%02d' % [second / 60, second % 60]
  end
end
