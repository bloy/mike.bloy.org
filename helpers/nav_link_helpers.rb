module NavLinkHelpers
  def main_menu_items
    resources = sitemap.where(:menu => true).all
    resources.map{ |resource| NavMenuItem.new(resource) }.sort
  end

  def social_menu_items
    [ EmailMenuItem.new(data.contact.email) ] +
      data.contact.social.map{|item| BaseMenuItem.new(item) }
  end

  def menu_item(item)
    li_opts = {}
    li_opts[:id] = "nav_#{item.html_id}" if item.html_id
    content_tag(:li, li_opts) do
      link_to(item.name, item.link, title: item.title)
    end
  end

end


class BaseMenuItem
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


class EmailMenuItem < BaseMenuItem
  def initialize(email)
    @item = {
      id: 'email',
      title: 'Email',
      extended_title: "Email: #{email}",
      url: "mailto:#{email}"
    }
  end
end


class NavMenuItem < BaseMenuItem
  def initialize(resource)
    @resource = resource
    simple_path = @resource.path.gsub(/#{@resource.ext}$/, '')

    @item = {
      id: simple_path.downcase.gsub(/[^a-z0-9_]/, '_'),
      url: @resource.url,
      title: title_from_resource(simple_path)
    }
    if @resource.data.extended_title
      @item[:extended_title] = @resource.data.link.title
    end
  end

  def weight
    @resource.data.weight.to_i
  end

  def <=>(other)
    [weight, name] <=> [other.weight, other.name]
  end

  private

  def title_from_resource(simple_path)
    if @resource.data.link_title
      @resource.data.link_title
    elsif @resource.data.title
      @resource.data.title
    else
      simple_path
    end
  end
end
