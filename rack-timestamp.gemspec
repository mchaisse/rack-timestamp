# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/timestamp/version'

Gem::Specification.new do |spec|
  spec.name          = 'rack-timestamp'
  spec.version       = Rack::Timestamp::VERSION
  spec.authors       = ['Maxime Chaisse-Leal']
  spec.email         = ['maxime.chaisseleal@gmail.com']

  spec.summary       = %q{Middleware that will insert a timestamp within the Rack environment.}
  spec.description   = %q{Middleware that will insert a timestamp within the Rack environment.}
  spec.homepage      = 'https://github.com/mchaisse/rack-timestamp'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rack',    '~> 2.0'
  spec.add_development_dependency 'rspec',   '~> 3.0'
end
