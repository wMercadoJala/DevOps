require 'sinatra'
require 'JSON'

get '/' do
  erb :hello_world
end

get '/greeting' do
  content_type :json # Content-Type: application/json;charset=utf-8

  # Use to_json to generate JSON based on the Ruby hash
  {greeting: 'Hello World!'}.to_json
end