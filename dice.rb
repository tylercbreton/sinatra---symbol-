require 'sinatra'

get '/' do
  @my_roll = rand(1..6)
  @opp_roll = rand(1..6)

  if @my_roll - @opp_roll < 0
    erb :lose #@ symbol is used to create a link btwn sinatra and the view
  elsif @my_roll - @opp_roll == 0
    erb :tied
  else 
    erb :win
  end 
end 
