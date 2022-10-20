require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/application'
require_relative 'lib/board'

player1 = Application.new

player1.run 
