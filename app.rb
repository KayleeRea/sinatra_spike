require 'sinatra'
require './lib/item'
require './lib/item_container'

get '/' do
  erb :index
end

get '/items' do
  filter = params[:search]
  array_of_items = ItemContainer.new.menu

  @displayed_items = []
  array_of_items.each do |item|
    if item.name.downcase.include? filter.to_s
      @displayed_items << item
    end
  end

  if @displayed_items.empty?
    @displayed_items = array_of_items
  end
  erb :items
end

get '/items/:id' do
  array_of_items = ItemContainer.new.menu

  array_of_items.each do |item|
    if item.id == params[:id].to_i
      @item_name = item.name
    end
  end
  erb :item_page
end

post '/items/new' do
  @displayed_items = ItemContainer.new.add_menu_item(params[:new_item_name])
  erb :items
end