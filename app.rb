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

post '/named-cat' do
  @names = params[:name] 
  p params
  erb(:index)
end

get '/form' do
  erb(:form)
end