require 'stringex'
require 'time'

# Custom Config
DATA_EXT = ".yml" # Should be JSON if easier
API_PREFIX = "/api/v1"

# Paths
set :css_dir, 'public/css'
set :js_dir, 'public/js'
set :images_dir, 'public/images'

Dir["data/*"].each do |path|
    name = File.basename path, DATA_EXT
    proxy "#{API_PREFIX}/#{name}.json", "api.json",
      :locals => { :collection => name }
end

helpers do
  def markdown(data)
    Tilt['md'].new { data }.render
  end
  def api(page)
    "#{API_PREFIX}/#{page}.json"
  end
end

# Middleman Plugins
activate :livereload

configure :build do
  activate :minify_css
  activate :minify_javascript
end

