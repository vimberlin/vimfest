require 'stringex'
require 'time'

# Custom Config
DATA_EXT = ".yml" # Should be JSON if easier

# Paths
set :css_dir, 'public/css'
set :js_dir, 'public/js'
set :images_dir, 'public/images'

activate :blog do |blog|
  blog.permalink = "/{title}"
  blog.layout = "blog"
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

