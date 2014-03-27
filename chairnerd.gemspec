require_relative 'lib/chairnerd/version'
Gem::Specification.new do |s|
  s.name        = 'chairnerd'
  s.version     = Chairnerd::VERSION
  s.date        = '2014-03-26'
  s.summary     = "A wrapper for the Seatgeek API"
  s.description = "There is a gem called Seatgeek, but it's been four years since it was updated, and since they are on V2 of their API, I decided to write a new one."
  s.authors     = ["Ryan Urabe"]
  s.email       = 'rurabe@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://github.com/rurabe/chairnerd'
  s.license     = 'MIT'
end