# frozen_string_literal: true

version = File.read(File.expand_path('GEMALLOC_VERSION', __dir__)).strip

Gem::Specification.new do |s|
  s.name = 'gemalloc'
  s.version = version
  s.summary = 'Injectable jemalloc usage for memory improvements.'
  s.description = 'Injectable jemalloc usage'

  s.authors = ['James T. Perreault']
  s.email = 'james@perreau.lt'
  s.homepage = 'https://github.com/jtperreault/gemalloc'

  s.extensions = ['ext/jemalloc/extconf.rb']

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'bundler', '>= 1.3.0'
  s.add_development_dependency 'rake', ['>= 0.8.7']
  s.add_development_dependency 'rake-compiler', ['~> 0.7.1']
end
