require 'dotenv'
require 'susy'
Dotenv.load

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

page "/resume.html", :layout => false

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :rsync
  deploy.host = ENV['DEPLOY_HOST']
  deploy.path = ENV['DEPLOY_PATH']
  deploy.user = ENV['DEPLOY_USER']
  deploy.clean = true
end
# Reload the browser automatically whenever files change
# activate :livereload

helpers do
  def nav_link_to(text, link, title = nil, icon = nil)
    link_text = text
    icon = 'dot-circle-o' unless icon
    cssclass = "fa fa-li fa-#{icon}"
    link_text = content_tag(:i, "", class: cssclass) + link_text
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

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
  activate :asset_hash
end
