require 'slim'

activate :directory_indexes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :build_dir, "tmp"

ready do
  sprockets.append_path File.join root, 'bower_components'
end

configure :build do
  ready do
    sprockets.append_path File.join root, 'bower_components'
  end
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end