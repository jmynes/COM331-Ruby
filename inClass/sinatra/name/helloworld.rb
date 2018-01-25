require 'sinatra'

get '/' do
  @name = 'Ralph'
  "Hello World from #{@name}"
end

get '/name/:name' do
  "Hello from #{params['name'].capitalize}"
  erb :name
end
