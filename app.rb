require 'sinatra'
require 'sinatra/reloader'
require('./lib/title_case')
require('./lib/scrabble_score')
also_reload('lib/**/*.rb')

get '/' do
  erb :index
end

get '/title_case' do
  erb :title_case
end

get '/scrabble_score' do
  erb :scrabble_score
end

get('/title') do
  @title = params.fetch('title').title_case()
  erb :title
end

get('/word') do
  @word = params.fetch('word').scrabble_score()
  erb :word
end
