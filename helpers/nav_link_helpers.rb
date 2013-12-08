module NavLinkHelpers
  def nav_link_to(text, link, title = nil, icon = nil)
    link_text = text
    icon = 'dot-circle-o' unless icon
    cssclass = "fa fa-#{icon} fa-fw"
    link_text = content_tag(:i, "", class: cssclass) + " #{link_text}"
    content_tag(:li) do
      link_to(link_text, link, title: (title ? title : text))
    end
  end

  def email_nav_link_to(text, email, icon = nil)
    nav_link_to(text, "mailto:#{email}", email, icon)
  end

  def social_nav_link_to(social)
    nav_link_to(social.title, social.url,
                (social.extended_title ? social.extended_title : social.title),
                social.icon)
  end
end
