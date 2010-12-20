# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "autorails/version"

Gem::Specification.new do |s|
  s.name        = "autorails"
  s.version     = Autorails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jesse Storimer"]
  s.email       = ["jstorimer@gmail.com"]
  s.summary     = %q{Write a gem summary}
  s.description = %q{Write a gem description}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
