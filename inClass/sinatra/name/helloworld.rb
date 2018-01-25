require 'sinatra'

get '/' do
  @name = 'Ralph'
  "Hello World from #{@name}"
end

get '/name/:name' do |n|
  @name = n.capitalize
  erb :name
end
