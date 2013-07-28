# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paywatch/version'

Gem::Specification.new do |spec|
  spec.name          = "paywatch"
  spec.version       = Paywatch::VERSION
  spec.authors       = ["Keyvan Fatehi"]
  spec.email         = ["keyvanfatehi@gmail.com"]
  spec.description   = %q{watch activity to determine hours worked per project}
  spec.summary       = %q{watch activity to determine hours worked per project}
  spec.homepage      = "https://github.com/keyvanfatehi/paywatch"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'simplecov'

  spec.add_runtime_dependency 'thin'
  spec.add_runtime_dependency "sinatra"
  spec.add_runtime_dependency "overtimer"
  spec.add_runtime_dependency "prawn"
end
