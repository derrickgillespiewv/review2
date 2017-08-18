require "sinatra"
require_relative"clean.rb"

enable :sessions

get '/' do
  erb :sandwich_parts
end

get '/selection' do 
erb :selection
end

post '/selection' do 

meat = params[:meat]
veg = params[:veg]
cheese = params[:cheese]
meat =clean(meat)
veg =clean(veg)
cheese =clean(cheese)
choice = params[:choice]
choice.to_s
erb :selection, :locals => {:meat => meat, :cheese => cheese, :veg => veg}
redirect '/results?choice=' + choice
 # + '&meat=' + meat + '&veg=' + veg + '&veg=' + veg + '&cheese=' + cheese
end 

get '/results' do 
choice = params[:choice]
choice.to_s
erb :results, :locals => {:choice => choice}
end 


# erb :results, :locals => {:choice => choice}
# end

# post '/results' do
# choice = params[:choice]
# erb :results, :locals => {:choice => choice}
# end


# post '/results' do
# choice = params[:choice]
#  choice.to_s
# redirect '/results?choice=' + choice 
# end
