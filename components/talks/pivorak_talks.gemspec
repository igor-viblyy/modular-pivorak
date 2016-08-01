$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'pivorak/talks/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'pivorak_talks'
  s.version     = Pivorak::Talks::VERSION
  s.authors     = ['Volodya Sveredyuk']
  s.email       = ['sveredyuk@gmail.com']
  s.homepage    = 'http://pivorak.io'
  s.summary     = 'Talks features of PivorakApp.'
  s.description = 'Talks features of PivorakApp.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 5.0.0'
  s.add_dependency 'pivorak_core'
  s.add_dependency 'sqlite3'
end
