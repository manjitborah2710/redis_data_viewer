$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'redis_data_viewer/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'redis_data_viewer'
  s.version     = RedisDataViewer::VERSION
  s.authors     = ['Manjit Borah']
  s.email       = ['manjitborah2710@gmail.com']
  s.homepage    = 'https://manjitborah2710.github.io/redis_data_viewer/'
  s.summary     = 'A gem that lets you see redis data in your rails application. It helps you view the data in your redis in a readonly mode. This prevents accidental changes in your datastore.'
  s.description = ''
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'pry', '~> 0.13.1'
  s.add_development_dependency 'sqlite3'

  s.add_dependency 'rails', '>= 5.0'
  s.add_dependency 'redis', '>= 4.2.0'
  s.add_dependency 'jquery-rails'
end
