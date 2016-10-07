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
require_relative "./lib/bikes_index.rb"
require_relative "./lib/add_bike.rb"
require_relative "./lib/client_root.rb"

get '/bikes' do
	BikesIndex.call
end

get '/add_bike' do
	AddBike.call redirect: method(:redirect)
end

get '/' do
	ClientRoot.call slim: method(:slim)
end


