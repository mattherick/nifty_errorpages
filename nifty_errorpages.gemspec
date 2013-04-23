$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nifty_errorpages/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nifty_errorpages"
  s.version     = NiftyErrorpages::VERSION
  s.authors     = ["Matthias Frick"]
  s.email       = ["matthias@frick-web.at"]
  s.homepage    = "https://github.com/mattherick/nifty_errorpages"
  s.summary     = "nifty_errorpages-#{s.version}"
  s.description = "A simple rails engine for customizing your error pages."
  s.rubyforge_project = "nifty_errorpages"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2"
  s.add_dependency "i18n"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency 'debugger'
  s.add_dependency "uglifier"
  
  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end