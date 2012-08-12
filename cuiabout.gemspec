# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cuiabout/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["naoty"]
  gem.email         = ["naoty.k@gmail.com"]
  gem.description   = %q{CLI for cui-about.me (http://cui-about.me)}
  gem.summary       = %q{CLI for cui-about.me}
  gem.homepage      = "http://github.com/naoty/cuiabout"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cuiabout"
  gem.require_paths = ["lib"]
  gem.version       = Cuiabout::VERSION
end
