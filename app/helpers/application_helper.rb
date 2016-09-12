module ApplicationHelper
  include AuthHelper
  include SessionsHelper

  def youtube_embed(youtube_url)
    YouTubeAddy.extract_video_id(youtube_url)
  end

  def test_if_it_works
    "test"
  end

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)}", role: 'alert') do
        concat message
      end)
    end
    nil
  end
end
