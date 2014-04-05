$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tosakin_circle_ci/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tosakin_circle_ci"
  s.version     = TosakinCircleCi::VERSION
  s.authors     = ["Seiei Higa"]
  s.email       = ["hanachin@gmail.com"]
  s.homepage    = "https://github.com/GeekHouseOkinawa/tosakin"
  s.summary     = "Tosakin CircleCi plugin"
  s.description = "Receive circle ci build result and post to idobata.io."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.4"
  s.add_dependency "idobata"

  s.add_development_dependency "sqlite3"
end
