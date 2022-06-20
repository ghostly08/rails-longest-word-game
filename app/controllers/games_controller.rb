class GamesController < ApplicationController

  def new
    @letters = ('a'..'z').to_a.shuffle[1..9].join(" ")
  end

  def score
    if params[:letters] == @letters
      return true
    else
      return false
    end
    raise
  end
end
