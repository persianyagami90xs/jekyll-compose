require "jekyll-compose/version"
require "jekyll-compose/file_creation_options"
require "jekyll-compose/arg_parser"
require "jekyll-compose/file_creator"

module Jekyll
  module Compose
    DEFAULT_TYPE = "md"
    DEFAULT_LAYOUT = "post"
    DEFAULT_LAYOUT_PAGE = "page"
  end
end

%w{draft post publish page}.each do |file|
  require File.expand_path("jekyll/commands/#{file}.rb", File.dirname(__FILE__))
end
