require 'sinatra'
require 'pstore'
require 'json'
require 'awesome_print'

$bikeJsonPath = "./bikes.json"

require_relative "./lib/database.rb"
require_relative "./lib/initial_data_load.rb"
require_relative "./lib/pstore_database_sync.rb"
require_relative "./lib/json_database_sync.rb"
require_relative "./lib/templates.rb"
require_relative "./lib/bikes_index.rb"
require_relative "./lib/add_bike.rb"
