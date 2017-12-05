$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "routes_page/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "routes_page"
  s.version     = RoutesPage::VERSION
  s.authors     = ["Jason Heylon"]
  s.email       = ["jasonheylon@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RoutesPage."
  s.description = "TODO: Description of RoutesPage."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
