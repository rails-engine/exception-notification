# frozen_string_literal: true

require File.expand_path("lib/exception_notification/version", __dir__)

Gem::Specification.new do |s|
  s.name = "exception-notification"
  s.version = ExceptionNotification::VERSION
  s.authors = ["Jamis Buck", "Josh Peek"]
  s.summary = "Exception notification for Rails apps"
  s.homepage = "https://github.com/rails-engine/exception-notification"
  s.email = "smartinez87@gmail.com"
  s.license = "MIT"

  s.required_ruby_version = ">= 2.3"
  s.required_rubygems_version = ">= 1.8.11"

  s.files = `git ls-files`.split("\n")
  s.files -= `git ls-files -- .??*`.split("\n")
  s.test_files = `git ls-files -- test`.split("\n")
  s.require_path = "lib"

  s.add_dependency "actionmailer", ">= 4.0"
  s.add_dependency "activesupport", ">= 4.0"

  s.add_development_dependency "httparty", "~> 0.10.2"
  s.add_development_dependency "mocha", ">= 0.13.0"
  s.add_development_dependency "mock_redis", "~> 0.19.0"
  s.add_development_dependency "rails", ">= 4.0", "< 8"
  s.add_development_dependency "resque", "~> 1.8.0"
  s.add_development_dependency "rubocop", "0.78.0"
  s.add_development_dependency "sidekiq", ">= 5.0.4"
  s.add_development_dependency "timecop", "~> 0.9.0"
end
