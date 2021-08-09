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

get '/cat' do
  '<img style = "border: dashed red;"
   src = "https://i.imgur.com/jFaSxym.png"
   alt="Photo of cute kitten"
  />'
end