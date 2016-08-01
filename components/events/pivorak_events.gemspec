$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'pivorak/events/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'pivorak_events'
  s.version     = Pivorak::Events::VERSION
  s.authors     = ['Volodya Sveredyuk']
  s.email       = ['sveredyuk@gmail.com']
  s.homepage    = 'http://pivorak.io'
  s.summary     = 'Events features of PivorakApp.'
  s.description = 'Events features of PivorakApp.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 5.0.0'
  s.add_dependency 'pivorak_core'
  s.add_dependency 'sqlite3'
end
