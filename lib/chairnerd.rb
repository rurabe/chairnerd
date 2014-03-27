require 'json'
require 'uri'
require 'net/http'

Gem.find_files("chairnerd/**/*.rb").each { |path| require path }

module Chairnerd
end