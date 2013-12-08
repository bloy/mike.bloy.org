module NavLinkHelpers
  def nav_link(link)
    content_tag(:li, {:id => "nav_#{link[:id]}"}) do
      link_to(link[:title], link[:url],
              title: (link[:extended_title] ? link[:extended_title] : link[:title]))
    end
  end

  def email_nav_link(id, text, email)
    nav_link(id: id,
             title: text,
             extended_title: email,
             url: "mailto:#{email}")
  end

end
