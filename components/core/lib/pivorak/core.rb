require 'sass-rails'
require 'bootstrap-sass'
require 'autoprefixer-rails'
require 'slim-rails'
require 'turbolinks'
require 'jquery-rails'
require 'coffee-rails'
require 'uglifier'
require 'devise'

module Pivorak
  module Core
    def self.available?(engine_name)
     Object.const_defined?("::Pivorak::#{engine_name.to_s.camelize}")
    end
  end
end
