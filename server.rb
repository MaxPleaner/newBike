# dependencies
require 'sinatra'
require 'pry'
require 'pstore'
require 'json'
require 'faker'
require 'awesome_print'
require 'faye/websocket'

# load environment variables
require 'dotenv'
Dotenv.load

# middleware
require 'rack/contrib/profiler'
use Rack::Profiler if ENV['RACK_ENV'] == 'development'
require 'rack/contrib/try_static'
use Rack::TryStatic, :root => 'bower_components/', :urls => %w[/]

# lib
require_relative "./lib/database.rb"
require_relative "./lib/initial_data_load.rb"
require_relative "./lib/pstore_database_sync.rb"
require_relative "./lib/json_database_sync.rb"
require_relative "./lib/websocket_helpers.rb"
require_relative "./lib/auth.rb"
require_relative "./lib/language_patches.rb"

# routes
require_relative "./lib/client_root_html_route.rb"
require_relative "./lib/initial_data_json_route.rb"

# json api routes are mapped in a separate file
require "./lib/api_routes.rb"

# the root HTML page, which also sets up websockets
get '/' do
	ClientRootHtmlRoute.call slim: method(:slim), env: env, params: params
end

# a json route to send initial data to clients
get '/initial_data' do
	InitialDataJsonRoute.call(params: params)
end


