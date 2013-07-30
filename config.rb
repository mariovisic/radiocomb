###
# Compass
###

compass_config do |config|
  config.output_style = :compact
end

###
# Page options, layouts, aliases and proxies
###

page '/index.html.haml', :layout => false

###
# Helpers
###

set :css_dir,    'stylesheets'
set :js_dir,     'javascripts'
set :images_dir, 'images'
set :build_dir,  'build'

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  activate :asset_hash
  activate :gzip
end
