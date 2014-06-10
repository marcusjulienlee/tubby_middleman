require "rubygems"

require "rack"
require "middleman/rack"
require "rack/contrib/try_static"

`bundle exec middleman build`

use Rack::Head

use Rack::TryStatic,
    :root => "tmp",
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']

run Middleman.server