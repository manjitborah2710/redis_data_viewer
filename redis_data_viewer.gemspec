$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'redis_data_viewer/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'redis_data_viewer'
  s.version     = RedisDataViewer::VERSION
  s.authors     = ['Manjit']
  s.email       = ['manjit.borah@box8.in']
  s.homepage    = ''
  s.summary     = 'Summary of RedisDataViewer.'
  s.description = 'Description of RedisDataViewer.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'pry', '~> 0.13.1'
  s.add_development_dependency 'sqlite3'

  s.add_dependency 'rails', '~> 5.0.7', '>= 5.0.7.2'
  s.add_dependency 'redis', '~> 4.2.0', '>= 4.2.0'
  s.add_dependency 'jquery-rails'
end
