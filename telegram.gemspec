# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "telegram/version"

Gem::Specification.new do |spec|
  spec.name          = "telegram"
  spec.version       = Telegram::VERSION
  spec.author        = "Paolo Brasolin"
  spec.email         = 'paolo.brasolin@gmail.com'

  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = 'https://github.com/paolobrasolin/telegram'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # spec.files         = `git ls-files lib README.md LICENSE.txt`.split("\n")
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(dev|test|spec|features)/})
  end
  spec.require_paths = ["lib", "gen"]

  spec.required_ruby_version = '>= 2.3'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency 'rest-client'

  spec.add_development_dependency 'nokogiri'
  spec.add_development_dependency 'liquid', '~> 4'
  spec.add_development_dependency 'activesupport'
  spec.add_development_dependency 'colorize'

  # spec.add_development_dependency 'guard', '~> 2.14'
  # spec.add_development_dependency 'guard-rspec', '~> 4.7'
  # spec.add_development_dependency 'simplecov', '~> 0.15'
  # spec.add_development_dependency 'rspec', '~> 3.6'
  # spec.add_development_dependency 'rubocop', '~> 0.50'
  # spec.add_development_dependency 'yard', '~> 0.9'
end
