require 'sinatra'

get '/' do
 "Hello, World!"
end

# pass in parameters call them with the URL: http://localhost:4567/hello/name
get '/hello/:name' do
 "Hello #{params[:name]}"
end

# pass in multiple parameters: http://localhost:4567/hello/name/city
get '/hello/:name/:city' do
  "Hey there #{params[:name]} from #{params[:city]}"
end

# call in a parameter with a query string: http://localhost:4567/query_string?sport=snowboarding
get '/query_string' do
 "I like: #{params[:sport]}"
end


# 404 error handling
not_found do
 status 404
 'Wrong door Bee-otch!'
end
