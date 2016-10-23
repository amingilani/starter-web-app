# frozen_string_literal: true
module ApplicationHelper
  def message_class_for(flash_type)
    case flash_type
    when 'success'
      'success' # Green
    when 'error'
      'error' # Red
    when 'alert'
      'warning' # Yellow
    when 'notice'
      'info' # Blue
    else
      flash_type
    end
  end
end
