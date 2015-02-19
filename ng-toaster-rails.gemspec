# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ng-toaster-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["fdibartolo"]
  gem.email         = ["fernando.di.bartolo@gmail.com"]
  gem.description   = 'Rails engine for jirikavi/AngularJS-Toaster: "AngularJS Toaster is a customized version of "toastr" non-blocking notification javascript library"'
  gem.summary       = 'Rails engine for jirikavi/AngularJS-Toaster'
  gem.homepage      = "https://github.com/fdibartolo/ng-toaster-rails"
  gem.licenses      = ['MIT']

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ng-toaster-rails"
  gem.require_paths = ["lib"]
  gem.version       = NgToaster::Rails::VERSION
end
