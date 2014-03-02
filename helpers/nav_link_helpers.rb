module NavLinkHelpers
  def main_menu_items
    resources = sitemap.where(:menu => true).all
    resources.map{ |resource| NavMenuItem.new(resource) }.sort
  end

  def social_menu_items
    [ EmailMenuItem.new(data.contact.email) ] +
      data.contact.social.map{|item| SocialMenuItem.new(item) }
  end

  def menu_item(item)
    li_opts = {}
    li_opts[:id] = "nav_#{item.html_id}" if item.html_id
    content_tag(:li, li_opts) do
      link_to(item.name, item.link, title: item.title)
    end
  end

end


class SocialMenuItem
  def initialize(item)
    @item = item
  end

  def name
    @item[:title]
  end

  def title
    @item[:extended_title] || @item[:title]
  end

  def link
    @item[:url]
  end

  def html_id
    @item[:id]
  end
end


class EmailMenuItem < SocialMenuItem
  def initialize(email)
    @item = {
      id: 'email',
      title: 'Email',
      extended_title: "Email: #{email}",
      url: "mailto:#{email}"
    }
  end
end


class NavMenuItem
  def initialize(resource)
    @resource = resource
  end

  def name
    if @resource.data.link && @resource.data.link.name
      @resource.data.link.name
    else
      title
    end
  end

  def title
    if @resource.data.link && @resource.data.link.title
      @resource.data.link.title
    elsif @resource.data.title
      @resource.data.title
    else
      @resource.path.gsub(/#{@resource.ext}$/, '')
    end
  end

  def link
    @resource.url
  end

  def weight
    @resource.data.weight.to_i
  end

  def <=>(other)
    [weight, name] <=> [other.weight, other.name]
  end

  def html_id
    @resource.path.gsub(/#{@resource.ext}$/, '')
  end
end
