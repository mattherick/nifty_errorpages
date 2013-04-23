require 'rubygems'

ENV["RAILS_ENV"] ||= 'production' # simulate tests in production environment => to really test error pages behaviour.

require File.expand_path("dummy/config/environment")
require 'rspec/rails'