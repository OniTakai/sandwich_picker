require "sinatra"

enable :sessions

get '/' do
  erb :sandwich_parts
end

post '/build' do
  pick = params[:pick]
  erb :sandwich_sort, :locals=>{:pick=>pick}
end

get '/correct' do
    pick = params[:pick]
    toppings = params[:toppings]
    erb :doubletake, :locals=>{:pick=>pick, :toppings=>toppings}
end