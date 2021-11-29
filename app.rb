require 'sinatra'
require 'sinatra/reloader' if development?
Sinatra::Reloader

get '/' do
  "Hello! Hello!"
end

get '/random-cat' do
  @app_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @app_name = params[:name]
  erb(:index)
end
