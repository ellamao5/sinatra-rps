require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  elsif @comp_move == "scissors"
    @outcome = "won"
  end

  erb(:zebra)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
 
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome == "lost"
  elsif @comp_move == "scissors"
    @outcome == "tied"
  elsif @cop_move == "paper"
    @outcome == "won"
  end

  erb(:elephant)
end

get("/paper") do
  erb(:giraffe)
end
