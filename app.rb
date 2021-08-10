require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello"
end

get '/secret' do
  "Shhhh it's a secret"
end

get '/makers' do
  "Im so tired :)"
end

get '/coffee' do
  "Im buzzing"
end

get '/random-cat' do
  @names = ["Amigo", "Misty", "Almond"].sample 
  erb(:index)
end

get '/named-cat' do
  @age = params[:age]
  @names = params[:name] 
  erb(:index)
end