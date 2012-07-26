# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mobiletechnics_sms/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "mobiletechnics_sms"
  gem.authors       = ["Lukas Westermann"]
  gem.email         = ["lukas.westermann@at-point.ch"]
  gem.summary       = %q{Deliver SMS using MobileTechnics HTTP API.}
  gem.description   = %q{Unofficial ruby adapter for MobileTechnics HTTP Bulk SMS API.
                         Tries to mimick mail API, so users can switch e.g. ActionMailer
                         with this SMS provider.}
  gem.homepage      = "https://at-point.ch/opensource"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.version       = MobiletechnicsSMS::VERSION

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", ["~> 2.10"]
  gem.add_development_dependency "webmock", ["~> 1.8.0"]
end
