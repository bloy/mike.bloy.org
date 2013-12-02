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

activate :automatic_image_sizes

###
# Page command
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

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

helpers do
  def extra_title
    (content_for?(:title) ? ": #{yield_content(:title)}" : "")
  end
end

set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :rsync
  deploy.host = ENV['DEPLOY_HOST']
  deploy.path = ENV['DEPLOY_PATH']
  deploy.user = ENV['DEPLOY_USER']
  deploy.clean = true
end

configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
  activate :relative_assets
end
