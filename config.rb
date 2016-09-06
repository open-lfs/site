###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
  # Assets directories
  set :css_dir, 'stylesheets'
  set :js_dir, 'javascripts'
  set :images_dir, 'images'
end

set :relative_links, true
ignore ".DS_Store"
ignore "imageoptim.manifest.yml"

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
    # For example, change the Compass output style for deployment
    activate :minify_css

    # Minify Javascript on build
    activate :minify_javascript

    # Enable cache buster
    activate :asset_hash

    # Use relative URLs
    activate :relative_assets

    set :css_dir, 'stylesheets'
    set :js_dir, 'javascripts'
    set :images_dir, 'images'
end
