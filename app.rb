require 'sinatra'
require 'sinatra/reloader' if development?
Sinatra::Reloader

get '/' do
  "Hello! Hello!"
end

get '/secret' do
  "Secret hello"
end

get '/public' do
  "Public hello"
end

get '/cat' do
  "<div>
    <img style='border: 2rem solid red' src='https://i.imgur.com/jFaSxym.png'>
  </div>"
end