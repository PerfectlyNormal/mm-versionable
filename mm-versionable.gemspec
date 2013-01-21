# encoding: UTF-8
require File.join File.dirname(__FILE__), '/lib/versionable/version'

Gem::Specification.new do |s|
  s.name                          = 'mm-versionable'
  s.homepage                      = 'http://github.com/PerfectlyNormal/mm-versionable'
  s.summary                       = 'A MongoMapper extension adding Versioning'
  s.require_paths                 = ['lib']
  s.authors                       = ['Per Christian B. Viken', 'Dhruva Sagar']
  s.email                         = 'perchr@northblue.org'
  s.version                       = Versionable::VERSION
  s.platform                      = Gem::Platform::RUBY
  s.files                         = Dir.glob('lib/**/*') + %w[config.ru Gemfile Rakefile README.md]
  s.test_files                    = Dir.glob('test/**/*')

  s.add_dependency 'differ'
  s.add_dependency 'mongo_mapper', '>= 0.9.0'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'shoulda'
end
