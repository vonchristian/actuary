$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "actuary/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "actuary"
  s.version     = Actuary::VERSION
  s.authors     = ["Von Christian Halip"]
  s.email       = ["vc.halip@gmail.com"]
  s.homepage    = "https://www.github.com/vonchristian/actuary"
  s.summary     = "Double-Entry bookeeping for rails 5 applications."
  s.description =  %q{The plutus plugin provides a complete double entry accounting system for use in any Ruby on Rails application. The plugin follows general Double Entry Bookkeeping practices. All calculations are done using BigDecimal in order to prevent floating point rounding errors. The plugin requires a decimal type on your database as well.}
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "sqlite3"

  s.add_development_dependency 'rspec-rails'

  s.add_development_dependency 'capybara'

  s.add_development_dependency 'factory_girl_rails'

  s.test_files = Dir["spec/**/*"]
end
