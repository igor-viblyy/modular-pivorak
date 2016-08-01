$:.push File.expand_path('../lib', __FILE__)

require 'pivorak/core/version'

Gem::Specification.new do |s|
  s.name        = 'pivorak_core'
  s.version     = Pivorak::Core::VERSION
  s.authors     = ['Volodya Sveredyuk']
  s.email       = ['sveredyuk@gmail.com']
  s.homepage    = 'http://pivorak.io'
  s.summary     = 'Core features of PivorakApp.'
  s.description = 'Core features of PivorakApp.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails',                    '~> 5.0.0'
  s.add_dependency 'sqlite3'
  s.add_dependency 'slim-rails',               '~> 3.1.0'
  s.add_dependency 'sass-rails',               '~> 5.0.5'
  s.add_dependency 'bootstrap-sass',           '~> 3.3.6'
  s.add_dependency 'autoprefixer-rails',       '~> 6.3.7'
  s.add_dependency 'jquery-rails',             '~> 4.1.1'
  s.add_dependency 'coffee-rails',             '~> 4.2.1'
  s.add_dependency 'uglifier',                 '~> 3.0.0'
  s.add_dependency 'turbolinks',               '~> 5.0.0'
  s.add_dependency 'devise',                   '~> 4.2.0'
end
