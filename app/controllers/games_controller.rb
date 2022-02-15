class GamesController < ApplicationController

  def new
    # @letters =[]
    @letters = ('a'..'z').to_a.shuffle[0..9]
  end

  def score
  end
end
