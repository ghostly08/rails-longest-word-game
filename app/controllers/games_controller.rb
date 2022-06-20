class GamesController < ApplicationController

  def new
    @letters = ('a'..'z').to_a.shuffle[0..9].join(" ")
  end

  def score
  end
end
