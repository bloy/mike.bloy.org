module NavLinkHelpers
  def nav_link(link)
    content_tag(:li, {:id => "nav_#{link[:id]}"}) do
      link_to(link[:title], link[:url],
              title: (link[:extended_title] ? link[:extended_title] : link[:title]))
    end
  end

  def email_nav_link
    email = data.contact.email
    nav_link(id: 'email',
             title: 'Email',
             extended_title: "Email: #{email}",
             url: "mailto:#{email}")
  end

end
