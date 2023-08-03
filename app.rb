require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/2/6") do
  @rolls = []

  2.times do
    die = rand(1..6)

    @rolls.push(die)
  end

  erb(:two_six)
end

get("/dice/2/10") do
  @rolls = []

  2.times do
    die = rand(1..10)

    @rolls.push(die)
  end

  erb(:two_ten)
end

get("/dice/1/20") do
  @rolls = []

  1.times do
    die = rand(1..20)

    @rolls.push(die)
  end

  erb(:one_twenty)
end

get("/dice/5/4") do
  @rolls = []

  5.times do
    die = rand(1..4)

    @rolls.push(die)
  end

  erb(:five_four)
end

get("/dynamic/6/19") do
  @rolls = []

  6.times do
    die = rand(1..19)

    @rolls.push(die)
  end

  erb(:six_ninteen)
end

get("/dynamic/20/4") do
  @rolls = []

  20.times do
    die = rand(1..4)

    @rolls.push(die)
  end

  erb(:twenty_four)
end

get("/dynamic/42/1337") do
  @rolls = []

  42.times do
    die = rand(1..1337)

    @rolls.push(die)
  end

  erb(:forty_two)
end

get("/dice/:number_of_dice/:how_many_sides") do

  @num_dice = params.fetch("number_of_dice").to_i

  @sides = params.fetch("how_many_sides").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
