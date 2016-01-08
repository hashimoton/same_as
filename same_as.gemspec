# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'same_as/version'

Gem::Specification.new do |spec|
  spec.name          = "same_as"
  spec.version       = SameAs::VERSION
  spec.authors       = ["hashimoton"]
  spec.email         = ["nhashimoto01@gmail.com"]

  spec.summary       = %q{SameAs appends an extensible comparison method for Array.}
  spec.description   = %q{"same_as?" compares two arrays with a given method.}
  spec.homepage      = "https://github.com/hashimoton/same_as"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
