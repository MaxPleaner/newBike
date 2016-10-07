require 'sinatra'
require 'pry'
require 'pstore'
require 'json'
require 'awesome_print'
require 'dotenv'
Dotenv.load
require_relative "./lib/database.rb"
require_relative "./lib/initial_data_load.rb"
require_relative "./lib/pstore_database_sync.rb"
require_relative "./lib/json_database_sync.rb"
require_relative "./lib/templates.rb"
require_relative "./lib/bikes_index.rb"
require_relative "./lib/add_bike.rb"
require_relative "./client/front_end.rb"

# defines HtmlPage

get '/bikes' do
	BikesIndex.call
end

get '/add_bike' do
	AddBike.call(method :redirect)
end


