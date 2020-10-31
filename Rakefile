require_relative './config/environment'
require 'sinatra/activerecord/rake'

require 'bundler/setup'
Bundler.require

# Type `rake -T` on your command line to see the available rake tasks.
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/users.sqlite"
)