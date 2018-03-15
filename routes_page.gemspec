$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "routes_page/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "routes_page"
  s.version     = RoutesPage::VERSION
  s.authors     = ["Jason Heylon"]
  s.email       = ["jasonheylon@gmail.com"]
  s.homepage    = "https://github.com/JasonHeylon/routes_page"
  s.summary     = "Simple web page for rails routes and grape routes display"
  s.description = "Simple web page for rails routes and grape routes display"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'grape', '~> 1.0', '>= 1.0.1'
  s.add_development_dependency 'byebug', '~> 9.1'
  s.add_development_dependency 'capybara', '~> 2.16', '>= 2.16.1'
end
