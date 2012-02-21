# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jhubert_common/version"

Gem::Specification.new do |s|
  s.name        = "jhubert_common"
  s.version     = JhubertCommon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jeremy Hubert"]
  s.email       = ["jhubert@gmail.com"]
  s.homepage    = "https://github.com/jhubert/jhubert-common"
  s.summary     = %q{A set of common helpers that I use in my projects}
  s.description = %q{A set of common helpers that I use in my projects}

  s.rubyforge_project = "jhubert_common"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
