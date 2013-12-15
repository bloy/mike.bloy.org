module TitleHelpers
  def main_title(title)
    if title
      "#{title} | #{data.navigation.site_title}"
    else
      data.navigation.site_title
    end
  end
end
