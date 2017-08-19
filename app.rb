require "sinatra"
require_relative"clean.rb"

enable :sessions

 
# Working on version with get-post structure

# get '/' d
# 	erb :sandwich_parts
# end

# post '/sandwich_parts' do 

# 	meat = params[:meat]
# 	veg = params[:veg]
# 	cheese = params[:cheese]
# 	meat =clean(meat)
# 	veg =clean(veg)
# 	cheese =clean(cheese)
# 	  erb :sandwich_parts, :locals => {:meat => meat, :cheese => cheese, :veg => veg}
# 	redirect '/selection?meat=' + meat + '&veg=' + veg + '&cheese=' + cheese
# end

# get '/selection' do 
# 	meat = params[:meat]
# 	veg = params[:veg]
# 	cheese = params[:cheese]
# 	choice = params[:choice]
# 	erb :selection, :locals => {:choice => choice}
# end 

# post '/selection' do 
# 	meat = params[:meat]
# 	veg = params[:veg]
# 	cheese = params[:cheese]
# 	choice = params[:choice]
# 	redirect '/results?meat=' + meat + '&veg=' + veg + '&cheese=' + cheese + '&choice=' + choice
# end 

# get '/results' do 
# 	choice = params[:choice]
# 	choice.to_s
# 	erb :results, :locals => {:choice => choice}
# end 



require "sinatra"

get '/' do
  erb :sandwich_parts
end

post '/parts' do
  food = params[:food]
  erb :selection, :locals=>{:food=>food}
end

get '/results' do
    food = params[:food]
    toppings = params[:toppings]
    erb :results, :locals=>{:food=>food, :toppings=>toppings}
  end