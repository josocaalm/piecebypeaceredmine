# encoding: utf-8
Gem::Specification.new do |s|
  s.name = 'redcarpet'
  s.version = '3.1.2'
  s.summary = "Markdown that smells nice"
  s.description = 'A fast, safe and extensible Markdown to (X)HTML parser'
  s.date = '2014-05-10'
  s.email = 'vicent@github.com'
  s.homepage = 'http://github.com/vmg/redcarpet'
  s.authors = ["Natacha Porté", "Vicent Martí"]
  s.license = 'MIT'
  s.required_ruby_version = '>= 1.9.2'
  # = MANIFEST =
  s.files = Dir.glob('**/*')
  # = MANIFEST =
  s.test_files = s.files.grep(%r{^test/})
  s.extra_rdoc_files = ["COPYING"]
  #s.extensions = ["ext/redcarpet/extconf.rb"]
  s.executables = ["redcarpet"]
  s.require_paths = ["lib"]
  s.platform = "x86-mingw32"

  s.add_development_dependency "nokogiri", "~> 1.6.0"
  s.add_development_dependency "rake-compiler", "~> 0.8.3"
  s.add_development_dependency "test-unit", "~> 2.5.4"
end
