require 'sinatra'
require './lib/item'
require './lib/item_repository'

get '/' do
  erb :index
end

get '/items' do
  erb :items
end