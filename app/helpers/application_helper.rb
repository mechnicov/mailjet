module ApplicationHelper
  def flash_messages
    flash.map do |type, msg|
      content_tag :div, class: "row flash-msg" do
        content_tag :div, class: "col s8 offset-s2" do
          content_tag :div, class: "card #{color(type)} lighten-1" do
            content_tag :div, class: "card-content white-text" do
              msg
            end
          end
        end
      end
    end.join.html_safe
  end

  private

  def color(type)
    case type
    when "success" then "green"
    when "fault" then "red"
    end
  end
end
