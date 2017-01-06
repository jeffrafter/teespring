# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teespring/version'

Gem::Specification.new do |spec|
  spec.name          = "teespring"
  spec.version       = Teespring::VERSION
  spec.authors       = ["jeffrafter"]
  spec.email         = ["jeffrafter@gmail.com"]

  spec.summary       = %q{Teespring Buyer and Seller API}
  spec.description   = %q{Teespring provides a number of public and private APIs for creating, managing, and purchasing tee-shirts through their platform.}
  spec.homepage      = "https://github.com/jeffrafter/teespring"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
