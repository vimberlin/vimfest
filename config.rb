require 'stringex'
require 'time'

# Custom Config
DATA_EXT = ".yml" # Should be JSON if easier

# Paths
set :css_dir, 'public/css'
set :js_dir, 'public/js'
set :images_dir, 'public/images'

activate :blog do |blog|
  blog.permalink = "/news/{year}-{month}-{day}-{title}.html"
  blog.layout = "blog"
  blog.publish_future_dated = true
end

helpers do
  def markdown(data)
    Tilt::KramdownTemplate.new { data }.render
  end
end

# Middleman Plugins
activate :livereload

configure :build do
  activate :minify_css
end

