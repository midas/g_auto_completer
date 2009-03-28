begin
  require 'spec'
rescue LoadError
  require 'rubygems'
  gem 'rspec'
  require 'spec'
end

# Try to load Rails environment for testing
ENV['RAILS_ENV'] = 'test'
rails_root = File.dirname(__FILE__) + '/rails_root'
require "#{rails_root}/config/environment.rb"

ActiveRecord::Migration.verbose = false
ActiveRecord::Migrator.migrate( "#{RAILS_ROOT}/db/migrate" )

$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'g_auto_completer'
