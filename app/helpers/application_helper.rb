module ApplicationHelper

  def str_time_in_min_and_sec(millisecond)
    second = (millisecond / 1000.0).round
    '%02d:%02d' % [second / 60, second % 60]
  end

  def error_messages_for(model_instance)
    return if model_instance.errors.empty?
    render 'error_messages_for', model_instance: model_instance
  end
end
