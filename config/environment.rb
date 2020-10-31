require 'bundler/setup'
Bundler.require

ENV['SINATRA_ENV'] ||= "development"
puts "#"*30 
puts ENV['SINATRA_ENV']
puts "#"*30 

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/users.sqlite"
)

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../app/controllers", "*.rb")].each {|f| require f}