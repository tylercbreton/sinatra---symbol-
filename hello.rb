require 'sinatra'

get '/hello' do
 if params['name'] == nil
  @name = 'person'
else 
  @name = params'[name]'
end 
  erb :hello
end 