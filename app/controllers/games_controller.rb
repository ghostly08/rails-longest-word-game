class GamesController < ApplicationController

  def new
    @letters = ('a'..'z').to_a.shuffle[1..9].join(" ")
  end

  def score
   @letters = params[:letters].split
  end
end
