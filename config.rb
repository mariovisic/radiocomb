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
set :relative_links, true

# Build-specific configuration
configure :build do
  activate :minify_html
  activate :gzip
  activate :relative_assets

  compass_config do |config|
    config.output_style = :compact
    config.sass_options = { :debug_info => false, :line_comments => false }
  end
end
