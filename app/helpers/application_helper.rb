module ApplicationHelper

  # return a title based on the page
  def title
    base_title = "liquiDo"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  # make logo
  def logo
    image_tag("logo.jpg", :alt => "liquiDo")
  end

end
