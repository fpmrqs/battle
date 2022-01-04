require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello world"
end

get '/secret' do
  "the cow goes moooooo"
end

get '/pets' do
"<h1>Rambo, Jones, Ramses</h1>"
end

get '/random_cat' do
  @naming = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named_cat' do
  p params
  @naming = params[:name]
  erb(:index)
end
