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

  def speaker_twitter(name)
    "<a href=\"https://twitter.com/#{name}\"><i class=\"speaker-social-icons fab fa-twitter\"></i></a>"
  end

  def speaker_github(name)
    "<a href=\"https://github.com/#{name}\"><i class=\"speaker-social-icons fab fa-github\"></i></a>"
  end
end

# Middleman Plugins
activate :livereload

configure :build do
  activate :minify_css
end

