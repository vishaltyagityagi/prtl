module ApplicationHelper
  def bootstrap_class_for flash_type
    {success: "alert-success", error: "alert-danger", alert: "alert-danger", notice: "alert-info"}[flash_type.to_sym]
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} alert-dismissible fade in mb10") do
        concat content_tag(:a, 'x', class: "close position-inherit", data: {dismiss: 'alert', label: 'close'})
        concat message
      end)
    end
    nil
  end
end
