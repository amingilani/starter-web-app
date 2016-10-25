# Don't wrap validation errors inside .field_with_errors
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance_tag|
  html_tag
end
