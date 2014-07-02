require 'sinatra'

get '/' do
  @my_roll = rand(1..6)
  @opp_roll = rand(1..6)

  if @my_roll - @opp_roll < 0
    erb :win #@ symbol is used to create a link btwn sinatra and the view
  elsif @my_roll - @opp_roll == 0
    "You rolled a #{@my_roll} <br> Your opponent rolled a #{@opp_roll} <br> You tied"
  else
    "You rolled a #{@my_roll} <br> Your opponent rolled a #{@opp_roll} <br> You tied" 
  end 
end 
