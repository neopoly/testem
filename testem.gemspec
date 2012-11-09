# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'testem'

Gem::Specification.new do |gem|
  gem.name          = "testem"
  gem.version       = Testem::VERSION
  gem.authors       = ["Peter Suschlik"]
  gem.email         = ["ps@neopoly.de"]
  gem.description   = %q{Often used aliases for MiniTest::Spec.}
  gem.summary       = %q{Brings back context, test, setup and teardown.}
  gem.homepage      = "https://github.com/neopoly/testem"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'minitest', '>= 3'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rdoc'
end
