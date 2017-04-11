class NinjasController < ApplicationController
  def index
    if !session[:gold]
      session[:gold] = 0
      session[:log] = []
    end
    @gold = session[:gold]
    @log = session[:log]
  end

  def farm
    amount = rand(10..20)
    session[:gold] += amount
    obj = {won: true, log: "You won #{amount} from farm"}
    session[:log].push(obj)
    redirect_to '/'
  end

  def cave
    amount = rand(5..10)
    session[:gold] += amount
    obj = {won: true, log: "You won #{amount} from cave"}
    session[:log].push(obj)
    redirect_to '/'
  end

  def house
    amount = rand(2..5)
    session[:gold] += amount
    obj = {won: true, log: "You won #{amount} from house"}
    session[:log].push(obj)
    redirect_to '/'
  end

  def casino
    amount = rand(0..50)
    gamble = rand(1..2)

    if gamble == 1
      session[:gold] += amount
      obj = {won: true, log: "You won #{amount} from casino"}
      session[:log].push(obj)
    else
      session[:gold] -= amount
      obj = {won: false, log: "You lost #{amount} from casino"}
      session[:log].push(obj)
    end
    redirect_to '/'
  end
end
